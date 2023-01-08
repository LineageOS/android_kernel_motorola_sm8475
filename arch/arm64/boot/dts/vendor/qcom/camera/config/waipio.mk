dtbo-$(CONFIG_ARCH_WAIPIO) := waipio-camera.dtbo
dtbo-$(CONFIG_ARCH_WAIPIO) += waipio-camera-overlay-v2.dtbo \
#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_WAIPIO) += waipio-camera-sensor-mtp.dtbo \
								waipio-camera-sensor-cdp.dtbo \
								waipio-camera-sensor-qrd.dtbo
else
# Li camera bringup
ifeq ($(CONFIG_LI_DTB),y)
dtbo-$(CONFIG_MMI_DEVICE_DTBS) += \
	waipio-camera-sensor-li-evb1.dtbo
else
dtbo-$(CONFIG_MMI_DEVICE_DTBS) += \
	waipio-camera-sensor-hiphi-evb1.dtbo \
	waipio-camera-sensor-hiphi-evt1.dtbo \
	waipio-camera-sensor-hiphic-evb1.dtbo \
	waipio-camera-sensor-hiphic-evt1.dtbo \
	waipio-camera-sensor-hiphic-dvt1.dtbo \
	waipio-camera-sensor-hiphid-pvt.dtbo
endif  #($(CONFIG_LI_DTB),y)
endif  #($(CONFIG_MMI_DEVICE_DTBS),y)

dtbo-$(CONFIG_ARCH_DIWALI) += diwali-camera.dtbo
dtbo-$(CONFIG_ARCH_DIWALI) += diwali-camera-sensor-idp.dtbo
dtbo-$(CONFIG_ARCH_DIWALI) += diwali-camera-sensor-qrd.dtbo

dtbo-$(CONFIG_ARCH_CAPE) += cape-camera.dtbo
#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_CAPE) += cape-camera-sensor-mtp.dtbo \
				cape-camera-sensor-cdp.dtbo \
				cape-camera-sensor-qrd.dtbo
else
ifeq ($(CONFIG_EQS_DTB),y)
dtbo-$(CONFIG_ARCH_CAPE) += \
	cape-camera-sensor-eqs-evt1.dtbo \
	cape-camera-sensor-eqs-evt2.dtbo \
	cape-camera-sensor-eqs-dvt1a1.dtbo \
	cape-camera-sensor-eqs-dvt1b1.dtbo
endif  #($(CONFIG_EQS_DTB),y)
ifeq ($(CONFIG_BRONCO_DTB),y)
dtbo-$(CONFIG_ARCH_CAPE) += \
        cape-camera-sensor-bronco-evt1.dtbo \
        cape-camera-sensor-bronco-evt2.dtbo \
        cape-camera-sensor-bronco-dvt1a1.dtbo \
        cape-camera-sensor-bronco-dvt1b1.dtbo
endif  #($(CONFIG_BRONCO_DTB),y)
ifeq ($(CONFIG_ONELI_DTB),y)
dtbo-$(CONFIG_ARCH_CAPE) += \
	cape-camera-sensor-oneli-evt1.dtbo \
	cape-camera-sensor-oneli-dvt1b.dtbo
endif  #($(CONFIG_ONELI_DTB),y)
ifeq ($(CONFIG_FELIX_DTB),y)
dtbo-$(CONFIG_ARCH_CAPE) += \
	cape-camera-sensor-oneli-dvt1b.dtbo
endif  #($(CONFIG_FELIX_DTB),y)
endif  #($(CONFIG_MMI_DEVICE_DTBS),y)
