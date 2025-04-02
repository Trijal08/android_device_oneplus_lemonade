#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device
DEVICE_CODENAME := lemonade
DEVICE_PATH := device/oneplus/lemonade
VENDOR_PATH := vendor/oneplus/lemonade
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit some common stuff
ROM_VENDOR := lineage
ifdef ROM_VENDOR
$(call inherit-product, vendor/$(ROM_VENDOR)/config/common_full_phone.mk)
else
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
endif

# Inherit device configuration
ifdef ROM_VENDOR
PRODUCT_NAME := $(ROM_VENDOR)_$(DEVICE_CODENAME)
else
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)
endif
PRODUCT_DEVICE := $(DEVICE_CODENAME)
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2115

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Build props
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9-user 14 UKQ1.230924.001 R.209d31b_1-39324b release-keys" \
    BuildFingerprint=OnePlus/OnePlus9/OnePlus9:14/UKQ1.230924.001/R.209d31b_1-39324b:user/release-keys \
    DeviceName=OnePlus9 \
    DeviceProduct=OnePlus9 \
    SystemDevice=OnePlus9 \
    SystemName=OnePlus9
