THEOS_DEVICE_IP=192.168.5.135
ARCHS=armv7 arm64


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = contact
contact_FILES = Tweak.xm
contact_FRAMEWORK=UIKit


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
