# Copyright (C) 2013 OmniROM Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# use low fps bootanimation
USE_LOWFPS_BOOTANI := true

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/galaxysbmtd/device.mk)

# Device identifier
PRODUCT_RELEASE_NAME := GalaxyS
PRODUCT_DEVICE := galaxysbmtd
PRODUCT_NAME := omni_galaxysbmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000B

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000B TARGET_DEVICE=GT-I9000B BUILD_FINGERPRINT=samsung/GT-I9000B/GT-I9000B:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000B-user 2.3.5 GINGERBREAD XXJVT release-keys"
