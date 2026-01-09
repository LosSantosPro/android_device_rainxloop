PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_COPY_FILES += \
    device/rainxloop/rainxloop/recovery.fstab:recovery/root/system/etc/recovery.fstab

RECOVERY_SDCARD_ON_DATA := true
