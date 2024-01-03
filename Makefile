################################################################################
# 
#  File        : $(ROOT)/Makefile
#  Description : A common Makefile to running TBs, Loading wave, cleaning TMPs
#  Designer    : Foez Ahmed
# 
################################################################################

ROOT = $(shell realpath .)

################################################################################
# CLEAN
################################################################################

CLEAN_TARGETS += $(shell find $(realpath ./) -name "*.vcd")
CLEAN_TARGETS += $(shell find $(realpath ./) -name "*.log")
CLEAN_TARGETS += $(shell find $(realpath ./) -name "*.wdb")
CLEAN_TARGETS += $(shell find $(realpath ./) -name "*.jou")
CLEAN_TARGETS += $(shell find $(realpath ./) -name "*.pb")
CLEAN_TARGETS += $(shell find $(realpath ./) -name ".Xil")
CLEAN_TARGETS += $(shell find $(realpath ./) -name "xsim.dir")

.PHONY: clean
clean:
	@echo -e "$(CLEAN_TARGETS)" | sed "s/  //g" | sed "s/ /\nremoving /g"
	@rm -rf $(CLEAN_TARGETS)

