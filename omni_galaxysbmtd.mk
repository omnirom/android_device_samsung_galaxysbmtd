#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit common Omni configurations
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device specific configurations
$(call inherit-product, device/samsung/galaxysbmtd/device.mk)

# Galaxy S uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Discard inherited values and use our own instead.
PRODUCT_MODEL := GT-I9000B
PRODUCT_BRAND := samsung
PRODUCT_NAME := omni_galaxysbmtd
PRODUCT_DEVICE := galaxysbmtd
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=GT-I9000B
    TARGET_DEVICE=GT-I9000B \
    PRIVATE_BUILD_DESC="GT-I9000B-user 2.3.5 GINGERBREAD XXJVT release-keys" \
    BUILD_FINGERPRINT="samsung/GT-I9000B/GT-I9000B:2.3.5/GINGERBREAD/XXJVT:user/release-keys"
