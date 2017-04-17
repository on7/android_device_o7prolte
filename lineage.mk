# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/o7prolte/full_o7prolte.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=o7prolte TARGET_DEVICE=o7prolte

PRODUCT_NAME := lineage_o7prolte
