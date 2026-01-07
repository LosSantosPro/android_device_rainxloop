# Minimal device makefile for recovery
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fstab location
TARGET_RECOVERY_FSTAB := device/rainxloop/rainxloop/recovery.fstab

# Treat /data/media as internal storage
RECOVERY_SDCARD_ON_DATA := true
