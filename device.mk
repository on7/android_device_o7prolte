#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product-if-exists, vendor/samsung/o7prolte/o7prolte-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Permissions
PRODUCT_COPY_FILES += external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Audio configuration
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \

# Wifi
PRODUCT_PACKAGES += hostapd_default.conf
PRODUCT_PACKAGES += p2p_supplicant_overlay.conf
PRODUCT_PACKAGES += wpa_supplicant_overlay.conf

# ANT+
PRODUCT_PACKAGES += AntHalService
PRODUCT_PACKAGES += com.dsi.ant.antradio_library
PRODUCT_PACKAGES += libantradio

# Ril
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml 

# Set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
    device/samsung/o7prolte/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Inherit from msm8916-common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)
