# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.enable.twsplussho=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    vendor.bluetooth.soc=cherokee \
    qcom.hw.aac.encoder=true

# WFD props
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# system props for the cne module
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

#Property to enable Codec2 for audio and OMX for Video
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=1


