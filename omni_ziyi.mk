#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ziyi device
$(call inherit-product, device/xiaomi/ziyi/device.mk)

PRODUCT_DEVICE := ziyi
PRODUCT_NAME := omni_ziyi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := ziyi
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ziyi-user 12 SKQ1.230401.001 V816.0.4.0.ULLMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/ziyi/ziyi:12/SKQ1.230401.001/V816.0.4.0.ULLMIXM:user/release-keys
