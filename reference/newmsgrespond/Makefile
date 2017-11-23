THEOS_DEVICE_IP=192.168.3.56
ARCHS=armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NewMsgRespond
NewMsgRespond_FILES = Tweak.xm NewMsgResp.m
NewMsgRespond_FRAMEWORK = UIKit
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
