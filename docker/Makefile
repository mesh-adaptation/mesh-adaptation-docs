all: build

PACKAGE		?=
NAMESPACE	= ghcr.io/mesh-adaptation
IMAGE		= $(PACKAGE)
TAG		= latest

build:
	docker build -f Dockerfile.$(PACKAGE) -t $(NAMESPACE)/$(IMAGE):$(TAG) .

pull:
	docker pull $(NAMESPACE)/$(IMAGE):$(TAG)

push:
	docker push $(NAMESPACE)/$(IMAGE):$(TAG)

run:
	docker run --rm -it -v ${HOME}:${HOME} $(NAMESPACE)/$(IMAGE):$(TAG)
