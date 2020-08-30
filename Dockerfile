ARG COMPOSE_VERSION
FROM docker/compose:alpine-$COMPOSE_VERSION

ARG GCR_OS
ARG GCR_VERSION
ARG GCR_ARCH

RUN apk add make curl
RUN curl -fsSL https://github.com/GoogleCloudPlatform/docker-credential-gcr/releases/download/v${GCR_VERSION}/docker-credential-gcr_${GCR_OS}_${GCR_ARCH}-${GCR_VERSION}.tar.gz \
    | tar xz --to-stdout ./docker-credential-gcr \
    > /usr/local/bin/docker-credential-gcr && chmod +x /usr/local/bin/docker-credential-gcr
