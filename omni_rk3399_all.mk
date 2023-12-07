#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rk3399_all device
$(call inherit-product, device/rockchip/rk3399_all/device.mk)

PRODUCT_DEVICE := rk3399_all
PRODUCT_NAME := omni_rk3399_all
PRODUCT_BRAND := TELPO
PRODUCT_MODEL := SP01
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3399_all-user 7.1.2 NHG47K user.wusq.20211208.174247 release-keys"

BUILD_FINGERPRINT := Android/rk3288/rk3288:5.1.1/NHG47K/user.wusq.20211208.174247:user/release-keys
