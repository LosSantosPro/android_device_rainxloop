# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Treat /data/media as internal storage
RECOVERY_SDCARD_ON_DATA := true

PRODUCT_COPY_FILES += \
    device/rainxloop/rainxloop/rainxloop/recovery/root/sbin/.gitkeep:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/.gitkeep \
    device/rainxloop/rainxloop/rainxloop/recovery/root/system/etc/.gitkeep:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/.gitkeep \
    device/rainxloop/rainxloop/rainxloop/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab
