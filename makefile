COMPOSE_VERSION ?= 1.26.2
GCR_OS ?= linux
GCR_VERSION ?= 2.0.2
GCR_ARCH ?= amd64

build:
	docker build \
--build-arg COMPOSE_VERSION=$(COMPOSE_VERSION) \
--build-arg GCR_OS=$(GCR_OS) \
--build-arg GCR_VERSION=$(GCR_VERSION) \
--build-arg GCR_ARCH=$(GCR_ARCH) \
. -f Dockerfile \
-t docker-compose-gcr:$(COMPOSE_VERSION)-$(GCR_VERSION) \
--no-cache --force-rm
