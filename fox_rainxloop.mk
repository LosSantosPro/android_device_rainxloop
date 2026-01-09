# device/rainxloop/rainxloop/fox_rainxloop.mk

DEVICE_PATH := device/rainxloop/rainxloop

PRODUCT_NAME := fox_rainxloop
PRODUCT_DEVICE := rainxloop
PRODUCT_BRAND := generic
PRODUCT_MODEL := rainxloop
PRODUCT_MANUFACTURER := generic

# Pull in device config (dynamic partitions + fstab copy)
$(call inherit-product, $(DEVICE_PATH)/device.mk)
