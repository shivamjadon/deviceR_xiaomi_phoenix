#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# ADB
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    persist.camera.gyro.disable=0 \
    persist.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,com.google.camera \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,com.google.camera \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.google.camera

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Enable blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1

# Priv-app permission
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# More stuff
PRODUCT_PRODUCT_PROPERTIES += \
    ro.HOME_APP_ADJ=1 \
    ro.mot.eri.losalert.delay=1000 \
    ro.config.hw_fast_dormancy=1 \
    ro.ril.enable.amr.wideband=1 \
    ro.config.hw_fast_dormancy=1 \
    ro.config.hw_quickpoweron=true

# Miscellaneous stuff
PRODUCT_PRODUCT_PROPERTIES += \
    ro.mot.buttonlight.timeout=1 \
    ro.ril.set.mtu1472=1

# Graphics Enhancement
PRODUCT_PRODUCT_PROPERTIES += \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.jpeg.quality=100

# Scrolling Responsiveness
PRODUCT_PRODUCT_PROPERTIES += \
    windowsmgr.max_events_per_sec=90 \
    persist.cust.tel.eons=1

# Makes streaming videos stream faster
PRODUCT_PRODUCT_PROPERTIES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-record=false \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-rtsp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-qcp=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    mm.enable.qcom_parser=13631487

# SmoothAF stuff
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sys.fw.dex2oat_thread_count=4 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.image-dex2oat-threads=4 \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    persist.cust.tel.eons=1

# Enable fast dormancy
PRODUCT_PRODUCT_PROPERTIES += \
    ro.fast.dormancy=1 \
    ro.config.hw_fast_dormancy=1 \
    ro.ril.fast.dormancy.rule=1 \
    ro.semc.enable.fast_dormancy=true

# TOUCH IMPROVEMENTS
PRODUCT_PRODUCT_PROPERTIES += \
    touch.pressure.scale=0.001 \
    persist.sys.ui.hw=1 \
    view.scroll_friction=10 \
    ro.config.enable.hw_accel=true \
    touch.size.calibration=diameter \
    touch.size.scale=1 \
    touch.size.bias=0 \
    touch.size.isSummed=0 \
    touch.pressure.calibration=physical \
    touch.orientation.calibration=none \
    touch.distance.calibration=none \
    touch.distance.scale=0 \
    touch.coverage.calibration=box \
    touch.gestureMode=spots \
    MultitouchSettleInterval=1ms \
    MultitouchMinDistance=1px \
    TapInterval=1ms \
    TapSlop=1px \
    touch.deviceType=touchScreen \
    touch.orientationAware=1

#Battery Saver
PRODUCT_PRODUCT_PROPERTIES += \
   wifi.supplicant_scan_interval=180 \
   persist.wpa_supplicant.debug=false \
   pm.sleep_mode=1 \
   ro.ril.power_collapse=1 \
   ro.config.hw_power_saving=1

# Other Tweak
PRODUCT_PRODUCT_PROPERTIES += \
   pm.dexopt.bg-dexopt=speed-profile \
   pm.dexopt.shared=speed \
   profiler.force_disable_err_rpt=1 \
   profiler.force_disable_ulog=1 \
   vidc.debug.perf.mode=2 \
   ro.floatingtouch.available=1 \
   mm.enable.smoothstreaming=true
