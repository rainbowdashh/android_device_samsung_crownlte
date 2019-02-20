# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/crownlte/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := crownlte
PRODUCT_NAME := full_crownlte
PRODUCT_MODEL := SM-N960F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

#Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/universal9810-crown

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)/releasetools

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

# PixelExperience stuff
TARGET_GAPPS_ARCH := arm64
TARGET_DENSITY := xxhdpi
