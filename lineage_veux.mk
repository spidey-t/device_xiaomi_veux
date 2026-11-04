#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lunaris stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Lunaris specific properties
LUNARIS_MAINTAINER := Spidey
LUNARIS_BUILD_TYPE := UNOFFICIAL
WITH_BCR := true
WITH_GMS := true
TARGET_DISABLE_EPPE := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_CUSTOM_UDFPS := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_SUPPORTS_BLUR := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_QUICK_TAP := false

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2201116SG
PRODUCT_NAME := lineage_veux

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="veux_global-user 13 TKQ1.221114.001 V816.0.12.0.TKCMIXM release-keys" \
    BuildFingerprint=Redmi/veux_global/veux:13/TKQ1.221114.001/V816.0.12.0.TKCMIXM:user/release-keys \
    DeviceProduct=veux_global
