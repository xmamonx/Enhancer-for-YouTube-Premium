TARGET := iphone:clang:14.4:14.0
INSTALL_TARGET_PROCESSES = YouTube
GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EnhancerforYouTubePremium
EnhancerforYouTubePremium_FILES = Tweak.xm $(shell find Controllers -name '*.m') $(shell find DTTJailbreakDetection -name '*.m')
EnhancerforYouTubePremium_CFLAGS = -fobjc-arc
EnhancerforYouTubePremium_FRAMEWORKS = UIKit Foundation
ARCHS = arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
