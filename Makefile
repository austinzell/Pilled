ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

TARGET := iphone:clang:13.7:13.0

# THEOS_DEVICE_IP = 192.168.1.148

export SYSROOT=$(THEOS)/sdks/iPhoneOS13.6.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Pilled

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
