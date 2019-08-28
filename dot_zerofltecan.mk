# Initialise device config
$(call inherit-product, device/samsung/zerofltecan/full_zerofltecan.mk)


# Enhanced NFC
# $(call inherit-product, vendor/lineage/config/nfc_enhanced.mk)

# Inherit some common DOT stuff.
$(call inherit-product, vendor/dot/config/common.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="zerofltecan" \
    TARGET_DEVICE="zeroflte"

PRODUCT_NAME := dot_zerofltecan
PRODUCT_DEVICE := zerofltecan
