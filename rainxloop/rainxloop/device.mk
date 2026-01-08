PRODUCT_NAME := fox_rainxloop
PRODUCT_DEVICE := rainxloop
PRODUCT_BRAND := generic
PRODUCT_MODEL := rainxloop
PRODUCT_MANUFACTURER := generic

# Pull in device config
$(call inherit-product, device/rainxloop/rainxloop/device.mk)

# Common recovery config
$(call inherit-product, vendor/omni/config/common.mk)
