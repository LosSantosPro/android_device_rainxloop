# device/rainxloop/rainxloop/device.mk

DEVICE_PATH := device/rainxloop/rainxloop

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Android 15 device (API 35) - important for defaults (crypto, props, etc.)
PRODUCT_SHIPPING_API_LEVEL := 35

# Recovery fstab (goes into recovery ramdisk)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# Storage behavior
RECOVERY_SDCARD_ON_DATA := true
