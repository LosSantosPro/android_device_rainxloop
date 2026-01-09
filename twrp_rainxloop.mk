# Alias product makefile for builders that expect twrp_<device>
$(call inherit-product, device/rainxloop/fox_rainxloop.mk)

PRODUCT_NAME := twrp_rainxloop
PRODUCT_DEVICE := rainxloop
PRODUCT_BRAND := generic
PRODUCT_MODEL := rainxloop
PRODUCT_MANUFACTURER := generic
