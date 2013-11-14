# Copyright (C) 2010 The Android Open Source Project
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


# This file is the device-specific product definition file for
# smdkv210. It lists all the overlays, files, modules and properties
# that are specific to this hardware: i.e. those are device-specific
# drivers, configuration files, settings, etc...

# Screen size is "large", density is "hdpi"
PRODUCT_AAPT_CONFIG := large hdpi
PRODUCT_LOCALES += hdpi

# dpi
PRODUCT_PROPERTY_OVERRIDES := \
	ro.sf.lcd_density=120

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS := device/samsung/smdkv210/overlay

# Bootanimation
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 480

PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/media/bootanimation.zip:system/media/bootanimation.zip

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

# Generated kcm keymaps
PRODUCT_PACKAGES += \
 	s3c-button.kcm \
 	ft5x0x_ts.kcm \
	S5P_TouchScreen.kcm

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/init/init.smdkv210.rc:root/init.smdkv210.rc \
	device/samsung/smdkv210/init/init.smdkv210.usb.rc:root/init.smdkv210.usb.rc \
	device/samsung/smdkv210/init/fstab.smdkv210:root/fstab.smdkv210 \
	device/samsung/smdkv210/init/ueventd.smdkv210.rc:root/ueventd.smdkv210.rc

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/init/vold.fstab:system/etc/vold.fstab

# Prebuilt kl and kcm keymaps + idc files.
PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/keymaps/ft5x0x_ts.kl:system/usr/keylayout/ft5x0x_ts.kl \
	device/samsung/smdkv210/keymaps/ft5x0x_ts.kcm:system/usr/keychars/ft5x0x_ts.kcm \
	device/samsung/smdkv210/keymaps/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc \
	device/samsung/smdkv210/keymaps/s3c-button.kl:system/usr/keylayout/s3c-button.kl \
	device/samsung/smdkv210/keymaps/s3c-button.kcm:system/usr/keychars/s3c-button.kcm \
	device/samsung/smdkv210/keymaps/S5P_TouchScreen.kl:system/usr/keylayout/S5P_TouchScreen.kl \
	device/samsung/smdkv210/keymaps/S5P_TouchScreen.kcm:system/usr/keychars/S5P_TouchScreen.kcm \
	device/samsung/smdkv210/keymaps/S5P_TouchScreen.idc:system/usr/idc/S5P_TouchScreen.idc

# Bluetooth setup
#PRODUCT_COPY_FILES += \
#	system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Wi-Fi
WIFI_BAND := 802_11_BG

PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/config/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	device/samsung/smdkv210/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/samsung/smdkv210/config/hostapd.conf:system/etc/wifi/hostapd.conf

PRODUCT_PACKAGES += \
        athwlan.bin.z77 \
        data.patch.hw2_0.bin \
        calData_ar6102_15dBm.bin \
        recEvent \
        wmiconfig 
#        abtfilt

# MFC Firmware
PRODUCT_COPY_FILES += \
        device/samsung/smdkv210/proprietary/firmware/samsung_mfc_fw.bin:system/vendor/firmware/samsung_mfc_fw.bin

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck \
	make_ext4fs

# Test utilites
PRODUCT_PACKAGES += \
	audiotest \
	evtest \
	lcd_info

# PowerVR libs
PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/proprietary/vendor/bin/pvrsrvinit:system/vendor/bin/pvrsrvinit \
	device/samsung/smdkv210/proprietary/vendor/lib/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
	device/samsung/smdkv210/proprietary/vendor/lib/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
	device/samsung/smdkv210/proprietary/vendor/lib/libpvr2d.so:system/vendor/lib/libpvr2d.so \
	device/samsung/smdkv210/proprietary/vendor/lib/libsrv_init.so:system/vendor/lib/libsrv_init.so \
	device/samsung/smdkv210/proprietary/vendor/lib/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
	device/samsung/smdkv210/proprietary/vendor/lib/libusc.so:system/vendor/lib/libusc.so \
	device/samsung/smdkv210/proprietary/vendor/lib/libsrv_um.so:system/vendor/lib/libsrv_um.so \
	device/samsung/smdkv210/proprietary/vendor/lib/libIMGegl.so:system/vendor/lib/libIMGegl.so \
	device/samsung/smdkv210/proprietary/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so:system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
	device/samsung/smdkv210/proprietary/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
	device/samsung/smdkv210/proprietary/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
	device/samsung/smdkv210/proprietary/vendor/lib/hw/gralloc.s5pc110.so:system/vendor/lib/hw/gralloc.s5pc110.so

# Lights
PRODUCT_PACKAGES += \
	lights.smdkv210

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.primary.smdkv210 \
	audio_policy.smdkv210

PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/hardware/libaudio/audio_policy.conf:system/etc/audio_policy.conf

# Camera
PRODUCT_PACKAGES += \
	libcamera \
	camera.smdkv210 \
	libs3cjpeg

# GPS config
PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/gps/gps.xml:system/vendor/etc/gps.xml \
	device/samsung/smdkv210/gps/gps.conf:system/etc/gps.conf

# These are the OpenMAX IL configuration files
PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/codecs/secomxregistry:system/etc/secomxregistry \
	device/samsung/smdkv210/codecs/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/smdkv210/codecs/media_codecs.xml:system/etc/media_codecs.xml

# These are the OpenMAX IL modules
PRODUCT_PACKAGES += \
	libSEC_OMX_Core \
	libOMX.SEC.AVC.Decoder \
	libOMX.SEC.M4V.Decoder \
	libOMX.SEC.M4V.Encoder \
	libOMX.SEC.AVC.Encoder

# Graphic Hardware Libs
PRODUCT_PACKAGES += \
	hwcomposer.s5pc110 \
	libstagefrighthw

# Usb accessory
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Misc other modules
PRODUCT_PACKAGES += \
	hdmi.s5pc110 \
	power.s5pc110 \
	sensors.smdkv210

# Preinstalled utility app(s).
PRODUCT_PACKAGES += \
	AdobeFlashPlayer \
	ESFileExplorer \
	ESTaskManager \
	Superuser \
	SuperSUNoNag \
	TerminalEmulator

# TerminalEmulator support library
PRODUCT_COPY_FILES += \
    device/samsung/smdkv210/proprietary/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# External GPS Support
PRODUCT_PACKAGES += \
	UsbGPS4Droid \
	GPSTest \
	SerialPort 

# Busybox + scripts
PRODUCT_COPY_FILES += \
	device/samsung/smdkv210/rooting/bin/su:system/bin/su \
	device/samsung/smdkv210/rooting/xbin/busybox:system/xbin/busybox \
	device/samsung/smdkv210/rooting/etc/insmod.sh:system/etc/insmod.sh \
	device/samsung/smdkv210/rooting/etc/check_property.sh:system/etc/check_property.sh \
	device/samsung/smdkv210/rooting/etc/install_busybox.sh:system/etc/install_busybox.sh \
	device/samsung/smdkv210/rooting/etc/initial_setup.sh:system/etc/initial_setup.sh \
	device/samsung/smdkv210/rooting/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Additional GoogleApps built from source
PRODUCT_PACKAGES += \
	Email FusedLocation Gallery2 SpareParts SoundRecorder

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
	Galaxy4 \
	HoloSpiralWallpaper \
	MagicSmokeWallpapers \
	NoiseField \
	PhaseBeam \
        librs_jni

# Screensavers
PRODUCT_PACKAGES += \
	BasicDreams \
	PhotoTable \
	WebViewDream

# Get the long list of APNs
PRODUCT_COPY_FILES += device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# GNU Linux libs
PRODUCT_COPY_FILES += \
    device/samsung/smdkv210/proprietary/lib/generic/libgcc_s.so.1:system/lib/generic/libgcc_s.so.1 \
    device/samsung/smdkv210/proprietary/lib/generic/libresolv-2.10.1.so:system/lib/generic/libresolv-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libc-2.10.1.so:system/lib/generic/libc-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libnss_nisplus-2.10.1.so:system/lib/generic/libnss_nisplus-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/librt-2.10.1.so:system/lib/generic/librt-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libnsl-2.10.1.so:system/lib/generic/libnsl-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libm-2.10.1.so:system/lib/generic/libm-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libutil-2.10.1.so:system/lib/generic/libutil-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libpcprofile.so:system/lib/generic/libpcprofile.so \
    device/samsung/smdkv210/proprietary/lib/generic/libmemusage.so:system/lib/generic/libmemusage.so \
    device/samsung/smdkv210/proprietary/lib/generic/libnss_hesiod-2.10.1.so:system/lib/generic/libnss_hesiod-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libBrokenLocale-2.10.1.so:system/lib/generic/libBrokenLocale-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libnss_nis-2.10.1.so:system/lib/generic/libnss_nis-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libSegFault.so:system/lib/generic/libSegFault.so \
    device/samsung/smdkv210/proprietary/lib/generic/libthread_db-1.0.so:system/lib/generic/libthread_db-1.0.so \
    device/samsung/smdkv210/proprietary/lib/generic/libnss_files-2.10.1.so:system/lib/generic/libnss_files-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libnss_compat-2.10.1.so:system/lib/generic/libnss_compat-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/ld-2.10.1.so:system/lib/generic/ld-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libcrypt-2.10.1.so:system/lib/generic/libcrypt-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libanl-2.10.1.so:system/lib/generic/libanl-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libcidn-2.10.1.so:system/lib/generic/libcidn-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libpthread-2.10.1.so:system/lib/generic/libpthread-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libnss_dns-2.10.1.so:system/lib/generic/libnss_dns-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libdl-2.10.1.so:system/lib/generic/libdl-2.10.1.so \
    device/samsung/smdkv210/proprietary/lib/generic/libntfs-3g.so.83.0.0:system/lib/generic/libntfs-3g.so.83.0.0 \
    device/samsung/smdkv210/proprietary/lib/generic/setup_genericlibs.sh:system/etc/setup_genericlibs.sh

# ntfsprogs binaries
PRODUCT_COPY_FILES += \
    device/samsung/smdkv210/proprietary/bin/ntfs-3g:system/bin/ntfs-3g \
    device/samsung/smdkv210/proprietary/bin/ntfsfix:system/bin/ntfsfix \
    device/samsung/smdkv210/proprietary/bin/mkntfs:system/bin/mkntfs

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1 \
	ro.allow.mock.location=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vold.umsdirtyratio=20

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Dalvik heap limits.
include frameworks/native/build/tablet-dalvik-heap.mk

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage

# Set product characteristic to tablet, needed for some ui elements
PRODUCT_CHARACTERISTICS := tablet
