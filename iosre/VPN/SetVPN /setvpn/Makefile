THEOS_DEVICE_IP=192.168.3.104
ARCHS=armv7 arm64
TARGET=iphone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Setvpn
Setvpn_FILES = Tweak.xm
Setvpn_FRAMEWORK=UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Preferences"
