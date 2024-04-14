all: clean html

html:
	cd docs && make html

clean:
	cd docs && make clean
