DOCKER ?= docker
INPUT_RELEASE_VERSION ?= 0.1.0
ZOLA_VERSION ?= 0.19.2
REPO ?= jerusdp/ci-zola
TAG ?= $(ZOLA_VERSION)

publish: build
	$(DOCKER) push $(REPO):${TAG} 

build:
	$(DOCKER) build --no-cache --build-arg ZOLA_VERSION=$(ZOLA_VERSION) -t $(REPO):${TAG} --target final .

build-binaries:
	$(DOCKER) build --no-cache --build-arg ZOLA_VERSION=$(ZOLA_VERSION) -t $(REPO):${TAG} --target binaries .

debug: build
	$(DOCKER) run --rm -it \
		--entrypoint=/bin/bash \
		$(REPO):${TAG}

debug-binaries : build-binaries
	$(DOCKER) run --rm -it \
		--entrypoint=/bin/bash \
		$(REPO):$(TAG)

build-test: 
	$(DOCKER) build --build-arg ZOLA_VERSION=$(ZOLA_VERSION) -t $(REPO)/test:${TAG} --target test .

test: build-test
	$(DOCKER) run --rm  \
		$(REPO)/test:${TAG}
		