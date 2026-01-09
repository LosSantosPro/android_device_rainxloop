# device/rainxloop/rainxloop/twrp_rainxloop.mk

# Alias product makefile for builders that expect twrp_<device>
$(call inherit-product, device/rainxloop/rainxloop/fox_rainxloop.mk)

PRODUCT_NAME := twrp_rainxloop
PRODUCT_DEVICE := rainxloop
