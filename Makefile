TARGET := iphone:clang:14.5
INSTALL_TARGET_PROCESSES = Freeform

THEOS_PACKAGE_SCHEME=rootless
export THEOS_DEVICE_IP=192.168.1.100

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FreeformDark

$(TWEAK_NAME)_FILES = $(wildcard *.xm *.x *.mm *.m)
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
