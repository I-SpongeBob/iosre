THEOS_DEVICE_IP=192.168.5.121
ARCH=ARMv7 ARM64
TARGET=iphone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = charactorcount
charactorcount_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileNotes"
