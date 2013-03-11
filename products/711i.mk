# Inherit AOSP device configuration for 711i.
$(call inherit-product, device/mediacom/711/full_711.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

$(call inherit-product, device/mediacom/711/711-blobs.mk)

# 711i overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/711i

# Setup device specific product configuration.
PRODUCT_DEVICE := 711
PRODUCT_NAME := aokp_711i
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := MP711I

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := 711

PRODUCT_COPY_FILES += \
   vendor/aokp/prebuilt/bootanimation/bootanimation_1024_600.zip:system/media/bootanimation.zip
