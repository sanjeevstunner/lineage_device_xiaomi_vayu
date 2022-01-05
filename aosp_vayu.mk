#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Pixel stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Feature Flags
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := aosp_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Add-ons
$(call inherit-product-if-exists, vendor/xiaomi/devicesettings/config.mk)
$(call inherit-product-if-exists, vendor/Gcam/config.mk)
$(call inherit-product-if-exists, vendor/pixel/launcher/config.mk)
