# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Make sure recovery ramdisk folders exist
PRODUCT_COPY_FILES += \
    device/rainxloop/rainxloop/recovery/root/sbin/.gitkeep:recovery/root/sbin/.gitkeep \
    device/rainxloop/rainxloop/recovery/root/system/etc/.gitkeep:recovery/root/system/etc/.gitkeep \
    device/rainxloop/rainxloop/recovery.fstab:recovery/root/system/etc/recovery.fstab

# Storage behavior
RECOVERY_SDCARD_ON_DATA := true
