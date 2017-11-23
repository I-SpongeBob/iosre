
THEOS_DEVICE_IP=192.168.43.136
ARCHS=armv7 arm64


include $(THEOS)/makefiles/common.mk

TWEAK_NAME =LoginTest
LoginTest_FILES = Tweak.xm Task.m 
LoginTest_FRAMEWORKS=UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"