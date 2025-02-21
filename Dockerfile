FROM rust:1.85.0-slim AS binaries
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
WORKDIR /tmp/project
RUN git clone --branch "v$ZOLA_VERSION" --single-branch https://github.com/getzola/zola.git zola
WORKDIR /tmp/project/zola
RUN cargo install --path . --locked --force && \
    zola --version

FROM rust:1.85.0-slim AS final
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
RUN adduser circleci
USER circleci
WORKDIR /home/circleci/project

FROM final AS test
WORKDIR /home/circleci/project
COPY test.sh test.sh
USER root
RUN chmod a+x test.sh
USER circleci
ENTRYPOINT [ "/home/circleci/project/test.sh" ]
