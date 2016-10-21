USE_OEM_TV_APP := true
$(call inherit-product, device/google/atv/products/atv_base.mk)

PRODUCT_NAME := dk
PRODUCT_DEVICE := dk
PRODUCT_BRAND := Android
PRODUCT_MODEL := Uto
PRODUCT_MANUFACTURER := qcom

PRODUCT_AAPT_CONFIG := normal tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

PRODUCT_PACKAGES += \
    libGLES_mesa \
    gralloc.$(TARGET_PRODUCT) \
    hwcomposer.$(TARGET_PRODUCT) \
    wpa_supplicant \
    wpa_supplicant.conf \
    Launcher2 \
    LeanbackLauncher \
    Settings \
    Browser2

PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/dk_core_hardware.xml:system/etc/permissions/dk_core_hardware.xml \
    $(LOCAL_PATH)/init.dk.rc:root/init.dk.rc \
    $(LOCAL_PATH)/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/ueventd.dk.rc:root/ueventd.dk.rc \
    $(LOCAL_PATH)/fstab.dk:root/fstab.dk \
    $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/Generic.kl:system/usr/keylayout/Generic.kl \
    $(PRODUCT_COPY_FILES)

DEVICE_PACKAGE_OVERLAYS := device/qcom/dk/overlay
PRODUCT_CHARACTERISTICS := tv
PRODUCT_LOCALES := en_US,ko_KR,ja_JP,zh_CN,hi_IN,en_GB,de_DE,fr_FR,it_IT,ru_RU,es_ES,pt_PT
