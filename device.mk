# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Copy fstab into recovery ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# Optional: keep placeholder dirs (harmless)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/sbin/.gitkeep:recovery/root/sbin/.gitkeep \
    $(DEVICE_PATH)/recovery/root/system/etc/.gitkeep:recovery/root/system/etc/.gitkeep

# Storage
RECOVERY_SDCARD_ON_DATA := true
