PREFIX?= /usr/local
INCLUDE_DIR= $(PREFIX)/include

INSTALL= install -v
MKDIR= mkdir -p
#MKDIR= $(INSTALL) -d -m 755
CP= $(INSTALL) -p -m 644

INC_FILES= elements.h elements.inl reader.h reader.inl visitor.h writer.h writer.inl

default:
	@echo "Usage: make install [PREFIX=...]"

install:
	@$(MKDIR) $(INCLUDE_DIR)/json
	@$(CP) $(addprefix include/json/, $(INC_FILES)) $(INCLUDE_DIR)/json

.PHONY: install default
