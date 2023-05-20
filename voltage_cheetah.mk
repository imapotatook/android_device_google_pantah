#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk
include vendor/pixel-framework/config.mk
include vendor/pixelparts/pixelparts.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := voltage_cheetah

# Uset scudo
#PRODUCT_USE_SCUDO := true

# partner modules
#MODULE_BUILD_FROM_SOURCE := true

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Graphene OS 
GrapheneApps := false

# Browser
SMARTCOOKIEWEB := false

# Voltage features 
VOLTAGE_BUILD_TYPE := OFFICIAL
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

WITH_GAPPS := true
WITH_GMS := true
TARGET_IS_PIXEL_7 := true


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ2A.230505.002 9891397 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ2A.230505.002/9891397:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
