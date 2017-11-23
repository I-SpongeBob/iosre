
THEOS_DEVICE_IP=192.168.3.84
ARCHS=armv7 arm64


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ContactInfoView
ContactInfoView_FILES = Tweak.xm
ContactInfoView_FRAMEWORKS=UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
