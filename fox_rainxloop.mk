PRODUCT_NAME := fox_rainxloop
PRODUCT_DEVICE := rainxloop
PRODUCT_BRAND := generic
PRODUCT_MODEL := rainxloop
PRODUCT_MANUFACTURER := generic

# Pull in our device config (fstab copy etc.)
$(call inherit-product, device/rainxloop/device.mk)
