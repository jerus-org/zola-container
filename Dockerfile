FROM rust:1.88.0 AS binaries
# renovate: datasource=github depName=getzola/zola packageName=getzola/zola versioning=semver-coerced
ENV ZOLA_VERSION=0.19.2
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    libssl-dev \
    pkg-config \
    ; \
    rm -rf /var/lib/apt/lists/*;
WORKDIR /tmp/project
RUN git clone --branch "v$ZOLA_VERSION" --single-branch https://github.com/getzola/zola.git zola
WORKDIR /tmp/project/zola
RUN cargo install --path . --locked --force && \
    zola --version

FROM rust:1.88.0 AS final
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    gpg \
    gpg-agent \
    jq \
    libssl-dev \
    openssh-client \
    pkg-config \
    unzip \
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
