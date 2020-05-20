## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := huawei y360-u03

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/huawei/hwy360-u/device.mk)
$(call inherit-product-if-exists, vendor/huawei/hwy360-u/hwy360-u-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hwy360-u
PRODUCT_NAME := cm_hwy360-u
PRODUCT_BRAND := huawei
PRODUCT_MODEL := huawei y360-u03
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei
