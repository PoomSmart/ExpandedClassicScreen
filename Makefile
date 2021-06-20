TARGET := iphone:clang:latest:14.0
PACKAGE_VERSION = 1.0.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ExpandedClassicScreen

ExpandedClassicScreen_FILES = Tweak.x
ExpandedClassicScreen_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
