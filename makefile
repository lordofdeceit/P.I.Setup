SHELL = /bin/bash

PROJECT := Post Install Setup Script

.PHONY : help compress-configurations extract-configurations
.DEFAULT_GOAL = help

help:
	@echo ""
	@echo "*****************************************************************************"
	@echo ""
	@echo " PROJECT     : $(PROJECT)"
	@echo ""
	@echo "*****************************************************************************"
	@echo ""
	@echo " 1. make compress-configurations ..... compress configurations."
	@echo " 2. make extract-configurations ...... extract configurations."
	@echo ""

compress-configurations:
	7z a configurations.7z configurations

extract-configurations:
	7z x configurations.7z