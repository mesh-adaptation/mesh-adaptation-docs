all: build

DOCKERHUB	= YES

ifeq ($(DOCKERHUB),YES)
NAMESPACE	= jwallwork
else
NAMESPACE	= ghcr.io/mesh-adaptation
endif
IMAGE		= firedrake-parmmg
TAG		= latest

build:
	docker build -f Dockerfile.firedrake -t $(NAMESPACE)/$(IMAGE):$(TAG) --no-cache .

pull:
	docker pull $(NAMESPACE)/$(IMAGE):$(TAG)

push:
	docker push $(NAMESPACE)/$(IMAGE):$(TAG)

run:
	docker run --rm -it -v ${HOME}:${HOME} $(NAMESPACE)/$(IMAGE):$(TAG)
