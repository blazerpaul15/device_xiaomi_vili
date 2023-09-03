#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vili device
$(call inherit-product, device/xiaomi/vili/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1440

# Rom additions
EVO_BUILD_TYPE := OFFICIAL
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := vili
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2107113SG
PRODUCT_NAME := evolution_vili

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vili-user 13 RKQ1.211001.001 V14.0.10.0.TKDEUXM release-keys"

BUILD_FINGERPRINT := "Xiaomi/vili/vili:13/RKQ1.211001.001/V14.0.10.0.TKDEUXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
