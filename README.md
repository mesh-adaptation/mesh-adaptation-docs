# Documentation source for Animate, Goalie, and Movement

![GitHub repo size](https://img.shields.io/github/repo-size/mesh-adaptation/mesh-adaptation-docs)

This repository holds the source code used to generate the documentation pages for [Animate](https://github.com/mesh-adaptation/animate), [Goalie](https://github.com/mesh-adaptation/goalie), and [Movement](https://github.com/mesh-adaptation/movement), including long-form documentation, demos, and API documentation.

The website build that is generated can be found at https://mesh-adaptation.github.io.

## Building the documentation

The documentation pages are build using [Sphinx](https://www.sphinx-doc.org/en/master).
The default method of generation is as HTML - this is used for the website build.
To generate the documentation locally, run the demos for each package and then use the `make html` command.
This can be achieved as follows:
```
cd docs
make run_animate_demos
make run_goalie_demos
make run_movement_demos
make html
```
