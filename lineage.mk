#
# Copyright 2016 The CyanogenMod Project
# Copyright 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from shamrock device
$(call inherit-product, device/sharp/eve/device.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := sharp
PRODUCT_BRAND := sharp
PRODUCT_DEVICE := eve
PRODUCT_NAME := lineage_eve
PRODUCT_MANUFACTURER := Sharp
PRODUCT_MODEL := 507SH
TARGET_VENDOR := sharp

PRODUCT_GMS_CLIENTID_BASE := android-google

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=qcom/eve/eve:7.1.1/NNH26/3945561:user/dev-keys \
    PRIVATE_BUILD_DESC="eve-user 7.1.1 NNH26 3945561 release-keys"
endif
