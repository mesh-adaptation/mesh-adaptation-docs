all: clean html

.PHONY: install

install:
	cd install && make

html:
	cd docs && make html

clean:
	cd docs && make clean
