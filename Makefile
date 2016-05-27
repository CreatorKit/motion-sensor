PACKAGES_DIR=../../packages
LWM2M_DIR=$(PACKAGES_DIR)/flowm2m
CONTIKI_PROJECT=lwm2m-client-contiki-motion-sensor
VERSION?=$(shell git describe --abbrev=4 --dirty --always --tags)
CONTIKI=../../contiki
CONTIKI_WITH_IPV6 = 1
CONTIKI_WITH_RPL = 0

CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\" -DVERSION='$(VERSION)'
CFLAGS += -Wall -Wno-pointer-sign -DLWM2M_CLIENT
CFLAGS += -I$(LWM2M_DIR)/core/src/common
CFLAGS += -I$(LWM2M_DIR)/core/src/client
CFLAGS += -I$(LWM2M_DIR)/core/src

ifndef TARGET
TARGET=mikro-e
endif

ifneq (,$(filter  $(TARGET),seedeye mikro-e))
  CFLAGS += -fno-short-double
  LDFLAGS += -Wl,--defsym,_min_heap_size=64000
endif

APPS += er-coap
APPS += rest-engine
APPS += client
APPS += common
APPS += jsmn
APPS += b64
APPS += hmac
APPS += libobjects

ifeq ($(TARGET),minimal-net)
  APPS += xml
endif

APPDIRS += $(LWM2M_DIR)/lib
APPDIRS += $(LWM2M_DIR)/core/src
APPDIRS += $(PACKAGES_DIR)


all: $(CONTIKI_PROJECT)
	xc32-bin2hex $(CONTIKI_PROJECT).$(TARGET)

distclean: cleanall

cleanall:
	rm -f $(CONTIKI_PROJECT).hex
	rm -f symbols.*
	rm -f $(CONTIKI_PROJECT).mikro-e

include $(CONTIKI)/Makefile.include
