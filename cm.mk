#
# CyanogenMod product configuration
#

# --------------------------------------------------------------------------------
# Inherit CM stuff
# --------------------------------------------------------------------------------

#$(call inherit-product, vendor/cm/config/gsm.mk)
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration.
$(call inherit-product, device/samsung/smdkv210/full_smdkv210.mk)

PRODUCT_NAME := cm_smdkv210
