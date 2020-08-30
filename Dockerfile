ARG COMPOSE_VERSION=1.26.2
FROM docker/compose:alpine-$COMPOSE_VERSION

ARG GCR_OS=linux
ARG GCR_VERSION=2.0.2
ARG GCR_ARCH=amd64

RUN apk add make curl
RUN curl -fsSL https://github.com/GoogleCloudPlatform/docker-credential-gcr/releases/download/v${GCR_VERSION}/docker-credential-gcr_${GCR_OS}_${GCR_ARCH}-${GCR_VERSION}.tar.gz \
    | tar xz --to-stdout ./docker-credential-gcr \
    > /usr/local/bin/docker-credential-gcr && chmod +x /usr/local/bin/docker-credential-gcr
