# Minimal device makefile for OrangeFox/TWRP-style recovery

# Dynamic partitions (Android 10+)
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fstab location
TARGET_RECOVERY_FSTAB := device/rainxloop/rainxloop/recovery.fstab

# Treat /data/media as internal storage
RECOVERY_SDCARD_ON_DATA := true

PRODUCT_COPY_FILES += \
    device/rainxloop/rainxloop/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

PRODUCT_COPY_FILES += \
    device/rainxloop/rainxloop/recovery/root/sbin/.gitkeep:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/.gitkeep
