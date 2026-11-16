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

# veux uses the cheaper Kawase Darkmoon blur path; the default Kawase dual-filter
# V2 blur is too heavy for the Adreno 619 at 120 Hz and shows up as GPU frame
# misses in homescreen/depth animations.
TARGET_LOW_END_BLUR := true

# AxionOS device configuration.
TARGET_DISABLE_EPPE := true
AXION_CAMERA_REAR_INFO := 50
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER := Spidey
LINEAGE_BUILDTYPE := COMMUNITY
AXION_PROCESSOR := Snapdragon_CPU_1

# Inherit some common Axion stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# ViPER4Android
$(call inherit-product, vendor/viper/viper.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Axion specific properties
TARGET_OPTIMIZED_DEXOPT := true
TARGET_CUSTOM_UDFPS := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_SUPPORTS_BLUR := true

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2201116SG
PRODUCT_NAME := lineage_veux

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="veux_eea-user 13 TKQ1.221114.001 V816.0.13.0.TKCEUXM release-keys" \
    BuildFingerprint=Redmi/veux_eea/veux:13/TKQ1.221114.001/V816.0.13.0.TKCEUXM:user/release-keys \
    DeviceProduct=veux_eea
