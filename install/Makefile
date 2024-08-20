# Makefile for installing Firedrake based on a PETSc installation including Mmg
# and ParMmg.

# Command line options
MPICC					?= $(shell which mpicc)
MPICXX					?= $(shell which mpicxx)
MPIF90					?= $(shell which mpif90)
MPIEXEC					?= $(shell which mpiexec)
FIREDRAKE_ENV			?= firedrake-$(shell date +%b%y | tr A-Z a-z)
BUILD_DIR 				?= $(shell pwd)
PETSC_CONFIGURE_FILE	?= petsc_configure_options.txt

# Environment variables
PETSC_CONFIGURE_OPTIONS="$(shell echo -n $(shell cat $(PETSC_CONFIGURE_FILE))) \
						--with-mpiexec=${MPIEXEC} --CC=${MPICC} \
						--CXX=${MPICXX} --FC=${MPIF90}"

# Handle command line inputs
FIREDRAKE_CONFIGURE_OPTIONS := "--venv-name=$(FIREDRAKE_ENV)"
ifneq ($(MPICC),)
    ifeq ($(shell test -e $(MPICC) && echo exists),)
        $(error MPICC is defined but the path $(MPICC) does not exist)
    endif
    FIREDRAKE_CONFIGURE_OPTIONS += "--mpicc=$(MPICC)"
endif
ifneq ($(MPICXX),)
    ifeq ($(shell test -e $(MPICXX) && echo exists),)
        $(error MPICXX is defined but the path $(MPICXX) does not exist)
    endif
    FIREDRAKE_CONFIGURE_OPTIONS += "--mpicxx=$(MPICXX)"
endif
ifneq ($(MPIF90),)
    ifeq ($(shell test -e $(MPIF90) && echo exists),)
        $(error MPIF90 is defined but the path $(MPIF90) does not exist)
    endif
    FIREDRAKE_CONFIGURE_OPTIONS += "--mpif90=$(MPIF90)"
endif
ifneq ($(MPIEXEC),)
    ifeq ($(shell test -e $(MPIEXEC) && echo exists),)
        $(error MPIEXEC is defined but the path $(MPIEXEC) does not exist)
    endif
    FIREDRAKE_CONFIGURE_OPTIONS += "--mpiexec=$(MPIEXEC)"
endif

.PHONY: all check_env install clean

all: clean check_env install

check_env:
	@echo "MPICC=$(MPICC)"
	@echo "MPICXX=$(MPICXX)"
	@echo "MPIF90=$(MPIF90)"
	@echo "MPIEXEC=$(MPIEXEC)"
	@echo "BUILD_DIR=$(BUILD_DIR)"
	@echo "FIREDRAKE_ENV=$(FIREDRAKE_ENV)"
	@echo "FIREDRAKE_CONFIGURE_OPTIONS=$(FIREDRAKE_CONFIGURE_OPTIONS)"
	@echo "PETSC_CONFIGURE_OPTIONS=$(PETSC_CONFIGURE_OPTIONS)"
	@echo "python3=$(shell which python3)"
	@echo "Are these settings okay? Press any key to continue or Ctrl+C to exit."
	@read chk

install:
	@cd $(BUILD_DIR); \
		export PETSC_CONFIGURE_OPTIONS=$(PETSC_CONFIGURE_OPTIONS); \
		curl -O https://raw.githubusercontent.com/firedrakeproject/firedrake/master/scripts/firedrake-install; \
		python3 firedrake-install $(FIREDRAKE_CONFIGURE_OPTIONS)

clean:
	@rm -f $(BUILD_DIR)/firedrake-install
	@rm -f $(BUILD_DIR)/firedrake-install.log
	@rm -rf $(BUILD_DIR)/$(FIREDRAKE_ENV)
