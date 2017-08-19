
# Inherit some common CM stuff.

ifeq (pa_us997,$(TARGET_PRODUCT))

# Inherit from those products, most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/lge/us997/us997.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := pa_us997

# Get the defaults going.
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit from our common CAF device tree.
include device/qcom/common/common.mk

# Override device build properties.
PRODUCT_NAME := pa_us997
PRODUCT_DEVICE := us997
PRODUCT_BRAND := lge
PRODUCT_MODEL := us997
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g6" \
    PRODUCT_NAME="lucye_nao_us" \
    BUILD_FINGERPRINT="lge/lucye_nao_us/lucye:7.0/NRD90U/172061549d102:user/release-keys" \
    PRIVATE_BUILD_DESC="lucye_nao_us-user 7.0 NRD90U 172061549d102 release-keys"

TARGET_VENDOR := lge
# Paranoid Android platform
include vendor/pa/main.mk

endif
