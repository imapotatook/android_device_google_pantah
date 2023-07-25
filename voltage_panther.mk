#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/panther/device-lineage.mk
#include vendor/pixel-framework/config.mk
#include vendor/pixelparts/pixelparts.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := voltage_panther

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080


# Voltage features 
VOLTAGE_BUILD_TYPE := OFFICIAL
EXTRA_UDFPS_ANIMATIONS := true

# gms
ifeq ($(WITH_GAPPS), true)
    include vendor/pixel-framework/config.mk
    include vendor/pixelparts/pixelparts.mk
    TARGET_FACE_UNLOCK_SUPPORTED := true
    TARGET_SUPPORTS_GOOGLE_RECORDER := true
    #TARGET_INCLUDE_STOCK_ARCORE := true
    TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
    SMARTCOOKIEWEB := false
else
    TARGET_FACE_UNLOCK_SUPPORTED := true
    SMARTCOOKIEWEB := true
endif


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 13 TQ2A.230705.0001 10216780 release-keys"

BUILD_FINGERPRINT := google/panther/panther:13/TQ2A.230705.001/10216780:user/release-keys

#$(call inherit-product, vendor/google/panther/panther-vendor.mk)
