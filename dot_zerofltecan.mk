# Copyright (C) 2013-2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for zerofltecan hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and zerofltecan, hence its name.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from zeroltecan device
$(call inherit-product, device/samsung/zeroltecan/device.mk)

# Inherit some common DOT stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := dot_zeroltecan
PRODUCT_DEVICE := zeroltecan
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-G925W8

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=zeroltebmc \
    TARGET_DEVICE=zeroltebmc \
    PRIVATE_BUILD_DESC="zeroltebmc-user 7.0 NRD90M G925W8VLU6DRF1 release-keys"

BUILD_FINGERPRINT := "samsung/zeroltebmc/zeroltebmc:7.0/NRD90M/G925W8VLU6DRF1:user/release-keys"
