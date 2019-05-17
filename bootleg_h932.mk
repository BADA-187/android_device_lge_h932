$(call inherit-product, device/lge/h932/full_h932.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifiers

PRODUCT_NAME := bootleg_h932
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V30

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="joan" \
    PRODUCT_DEVICE="joan" \
    PRODUCT_NAME="joan_tmo_us" \
    PRIVATE_BUILD_DESC="joan_tmo_us-user 8.0.0 OPR1.170623.026 1900816569db7 release-keys"

BUILD_FINGERPRINT="google/blueline/blueline:9/PQ3A.190505.002/5450365:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model ro.vendor.product.model

TARGET_PICK_BOOTANIMATION := 3,4,8
TARGET_BOOT_ANIMATION_RES := 1440
