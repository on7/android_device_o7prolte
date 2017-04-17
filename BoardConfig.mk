# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from common j5
-include device/samsung/msm8916-common/BoardConfigCommon.mk

# Audio
AUDIO_FEATURE_SAMSUNG_DUAL_SIM := true


# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/o7prolte/configs/bluetooth

# Radio
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2181038080
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5016350720
#(5016367104-16384= 5016350720 bytes)

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

# Assert
TARGET_OTA_ASSERT_DEVICE := o7prolte,SM-G600FY,G600FY

# Kernel
TARGET_KERNEL_VARIANT_CONFIG :=msm8916_sec_o7lte_swaopen_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/msm8916-common

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_o7prolte
TARGET_RECOVERY_DEVICE_MODULES := libinit_o7prolte
