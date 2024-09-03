all: build

DOCKERHUB	= YES

PACKAGE		?=
NAMESPACE	= ghcr.io/mesh-adaptation
IMAGE		= $(PACKAGE)-parmmg
TAG		= latest

build:
	docker build -f Dockerfile.$(PACKAGE) -t $(NAMESPACE)/$(IMAGE):$(TAG) .

pull:
	docker pull $(NAMESPACE)/$(IMAGE):$(TAG)

push:
	docker push $(NAMESPACE)/$(IMAGE):$(TAG)

run:
	docker run --rm -it -v ${HOME}:${HOME} $(NAMESPACE)/$(IMAGE):$(TAG)
