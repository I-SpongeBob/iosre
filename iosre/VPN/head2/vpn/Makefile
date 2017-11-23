THEOS_DEVICE_IP=192.168.5.135
ARCHS = armv7 arm64
TARGET =iphone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VPN
VPN_FILES = Tweak.xm
VPN_FRAMEWORKS = UIKit 

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Preferences"
