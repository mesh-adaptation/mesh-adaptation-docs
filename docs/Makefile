# Makefile for building the Sphinx documentation for Animate, Goalie, and Movement

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXAPIDOC  = sphinx-apidoc
SPHINXPROJ    = Documentation
SOURCEDIR     = source
BUILDDIR      = build
PYTHON        = ${VIRTUAL_ENV}/bin/python3

ANIMATE       = ${VIRTUAL_ENV}/src/animate
MOVEMENT      = ${VIRTUAL_ENV}/src/movement
GOALIE        = ${VIRTUAL_ENV}/src/goalie

help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: apidoc help clean copy_demos

GENERATED_FILES = source/demos

run_animate_demos:
	for FILE in ${ANIMATE}/demos/*.py; do \
		cd  ${ANIMATE}/demos/ && \
		${PYTHON} $$FILE ; \
	done; \
	cd . \

run_goalie_demos:
	for FILE in ${GOALIE}/demos/*.py; do \
		cd  ${GOALIE}/demos/ && \
		${PYTHON} $$FILE ; \
	done; \
	cd . \

run_movement_demos:
	for FILE in ${MOVEMENT}/demos/*.py; do \
		cd  ${MOVEMENT}/demos/ && \
		${PYTHON} $$FILE ; \
	done; \
	cd . \

source/demos: copy_demos

copy_demos:
	install -d source/demos
	cp ${ANIMATE}/demos/*.py source/demos
	cp ${ANIMATE}/demos/*.jpg source/demos
	cp ${ANIMATE}/demos/demo_references.bib source/demos
	cp ${GOALIE}/demos/*.py source/demos
	cp ${GOALIE}/demos/*.jpg source/demos
	cat ${GOALIE}/demos/demo_references.bib >> source/demos/demo_references.bib
	cp ${MOVEMENT}/demos/*.py source/demos
	cp ${MOVEMENT}/demos/*.jpg source/demos
	cat ${MOVEMENT}/demos/demo_references.bib >> source/demos/demo_references.bib
	for FILE in source/demos/*.py; do \
		pylit -c $$FILE; mv $$FILE.txt $$FILE.rst; \
	done
	install -d $(BUILDDIR)/html/demos
	cp source/demos/*.py $(BUILDDIR)/html/demos
	cp source/demos/*.jpg $(BUILDDIR)/html/demos
	cp source/demos/*.bib $(BUILDDIR)/html/demos
	install -d $(BUILDDIR)/html/animate
	install -d $(BUILDDIR)/html/goalie
	install -d $(BUILDDIR)/html/movement
	mkdir -p $(BUILDDIR)/html/_images
	cp source/animate/images/*.jpg $(BUILDDIR)/html/_images
	cp source/goalie/images/*.jpg $(BUILDDIR)/html/_images
	# cp source/movement/images/*.jpg $(BUILDDIR)/html/_images

SPHINX_TARGETS = dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub \
	latex latexpdf latexpdfja text man texinfo info gettext changes \
	xml pseudoxml linkcheck doctest coverage

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
$(SPHINX_TARGETS): Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

html: apidoc $(GENERATED_FILES)
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

apidoc:
	$(SPHINXAPIDOC) $$(python3 -c "import animate; import os; print(os.path.dirname(animate.__file__))") -o source -f -T
	$(SPHINXAPIDOC) $$(python3 -c "import goalie; import os; print(os.path.dirname(goalie.__file__))") -o source -f -T
	$(SPHINXAPIDOC) $$(python3 -c "import movement; import os; print(os.path.dirname(movement.__file__))") -o source -f -T

clean:
	-git clean -fdx $(BUILDDIR)/html/
	-rm -rf $(BUILDDIR)/doctrees
	-rm -rf $(GENERATED_FILES)
