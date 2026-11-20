# `make` runs the cocotb tests. `make lint` runs Verilator lint.
SIM ?= icarus
TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(wildcard $(CURDIR)/rtl/*.sv)
TOPLEVEL = rob
COCOTB_TOPLEVEL = rob
MODULE = test_rob
COCOTB_TEST_MODULES = test_rob
export PYTHONPATH := $(CURDIR)/test:$(PYTHONPATH)
.DEFAULT_GOAL := sim

include $(shell cocotb-config --makefiles)/Makefile.sim

.PHONY: lint
lint:
	verilator --lint-only -Wall $(VERILOG_SOURCES)
