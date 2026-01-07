# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_SUPPORTS_64_BIT_APPS := true

# Platform
TARGET_BOARD_PLATFORM := mt6877

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
    boot \
    init_boot \
    vendor_boot \
    dtbo \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864         # 0x4000000
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 68157440  # 0x4100000
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608    # 0x800000

# Boot related parameters
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version 4
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 4096
BOARD_USES_INIT_BOOT_IMAGE := true
BOARD_USES_VENDOR_BOOTIMAGE := true
TARGET_PREBUILT_KERNEL := device/rainxloop/rainxloop/rainxloop/prebuilt/Image.gz

# Filesystems present
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery fstab
TARGET_RECOVERY_FSTAB := device/rainxloop/rainxloop/recovery.fstab

# Recovery storage behavior
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

# Keep recovery slim due to 8MB init_boot
TW_EXCLUDE_APEX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

# OrangeFox basics
OF_MAINTAINER := rainxloop
OF_USE_MAGISKBOOT := 1

# Recovery UI
TW_MAX_BRIGHTNESS := 255
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Misc
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INCLUDE_FASTBOOTD := true
