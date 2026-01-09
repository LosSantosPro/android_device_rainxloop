# device/rainxloop/rainxloop/BoardConfig.mk

# Device Path
DEVICE_PATH := device/rainxloop/rainxloop

# Minimal manifest/device tree bring-up
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USES_64_BIT_BINDER := true
TARGET_USES_UEFI := true

# Platform / anti-rollback hacks for recovery builds
PLATFORM_VERSION := 15
PLATFORM_SECURITY_PATCH := 2099-12-31
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

TARGET_BOARD_PLATFORM := mt6877

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6877
TARGET_NO_BOOTLOADER := true

# Kernel (prebuilt)
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_NO_KERNEL_OVERRIDE := true

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_KERNEL_IMAGE_NAME := Image.gz

# Boot image header
BOARD_BOOT_HEADER_VERSION := 4
BOARD_PAGE_SIZE := 4096
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_PAGE_SIZE)

# MTK cmdline (from your /proc/cmdline)
BOARD_VENDOR_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_MKBOOTIMG_ARGS += --vendor_cmdline "$(BOARD_VENDOR_CMDLINE)"

# DTB (if your boot chain needs it)
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# Ramdisk compression
BOARD_RAMDISK_USE_LZ4 := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864         # 64MiB
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 68157440  # ~65MiB
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608    # 8MiB

# Flash block size: pagesize(4096) * 64
BOARD_FLASH_BLOCK_SIZE := 262144

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

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# VNDK
BOARD_VNDK_VERSION := current

# Dynamic partitions / copy-out
PRODUCT_USE_DYNAMIC_PARTITIONS := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Recovery in vendor_boot (boot header v4 flow)
TARGET_NO_RECOVERY := true
BOARD_USES_INIT_BOOT_IMAGE := true
BOARD_USES_VENDOR_BOOTIMAGE := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true

# Recovery storage behavior
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Logging
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Modules
TW_LOAD_VENDOR_BOOT_MODULES := true

# FastbootD
TW_INCLUDE_FASTBOOTD := true

# Keep slim at first
TW_EXCLUDE_APEX := true

# TWRP/OF tooling
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true

# UI basics
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TW_MAX_BRIGHTNESS := 255

# OrangeFox basics
OF_MAINTAINER := rainxloop
OF_USE_MAGISKBOOT := 1
