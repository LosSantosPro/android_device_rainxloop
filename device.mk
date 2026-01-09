DEVICE_PATH := device/rainxloop

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Copy required recovery files into ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6877.rc:recovery/root/init.recovery.mt6877.rc \

# Storage
RECOVERY_SDCARD_ON_DATA := true
