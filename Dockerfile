FROM rust:1.83.0-slim AS binaries
# renovate: datasource=github depName=getzola/zola packageName=getzola/zola versioning=semver-coerced
ENV ZOLA_VERSION=0.19.2
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    pkg-config \
    libssl-dev \
    build-essential \
    git \
    curl \
    ; \
    rm -rf /var/lib/apt/lists/*;
WORKDIR /home/circleci/project
RUN \   
    git clone --branch "v$ZOLA_VERSION" --single-branch https://github.com/getzola/zola.git zola && \
    cd zola && \
    cargo install --path . --locked --force && \
    cd .. && \
    zola --version

FROM rust:1.83.0-slim AS final
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    git \
    curl \
    jq \
    unzip \
    pkg-config \
    libssl-dev \
    build-essential \
    gpg \
    gpg-agent \
    openssh-client \
    ; \
    rm -rf /var/lib/apt/lists/*;
COPY --from=binaries $CARGO_HOME/bin/zola $CARGO_HOME/bin/
WORKDIR /home/circleci/project

FROM final AS test
WORKDIR /home/circleci/project
COPY test.sh test.sh
RUN chmod a+x test.sh
ENTRYPOINT [ "/home/circleci/project/test.sh" ]
