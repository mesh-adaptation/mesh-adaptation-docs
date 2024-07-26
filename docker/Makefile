all: build

DOCKERHUB	= YES

ifeq ($(DOCKERHUB),YES)
NAMESPACE	= jwallwork
else
NAMESPACE	= ghcr.io/mesh-adaptation
endif
TAG		= latest

build:
	docker build -f Dockerfile.firedrake -t $(NAMESPACE)/firedrake-parmmg:$(TAG) --no-cache .

pull:
	docker pull $(NAMESPACE)/firedrake-parmmg:$(TAG)

run:
	docker run --rm -it -v ${HOME}:${HOME} $(NAMESPACE)/firedrake-parmmg:$(TAG)
