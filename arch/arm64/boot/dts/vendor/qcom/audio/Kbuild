
#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_WAIPIO) += waipio-audio.dtbo \
                 waipio-audio-cdp.dtbo \
                 waipio-audio-mtp.dtbo \
                 waipio-audio-qrd.dtbo \
                 waipio-audio-atp.dtbo \
                 waipio-audio-rumi.dtbo \
                 waipio-audio-hdk.dtbo
else
# ironmn audio bringup
ifeq ($(CONFIG_IRONMN_DTB),y)
dtbo-$(CONFIG_ARCH_WAIPIO) += waipio-audio.dtbo \
                 waipio-audio-moto-ironmn-evb1.dtbo
else ifeq ($(CONFIG_LI_DTB),y)
dtbo-y += waipio-audio.dtbo \
                 waipio-audio-moto-li-evb1.dtbo
else
dtbo-$(CONFIG_ARCH_WAIPIO) += waipio-audio.dtbo \
                 waipio-audio-moto-hiphi-evb1.dtbo \
                 waipio-audio-moto-hiphic-evb1.dtbo \
                 waipio-audio-moto-hiphic-dvt1.dtbo \
                 waipio-audio-moto-hiphid-pvt.dtbo
endif  #($CONFIG_IRONMN_DTB,y)
endif  #($(CONFIG_MMI_DEVICE_DTBS),y)

#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_DIWALI) += diwali-audio.dtbo \
                 diwali-audio-idp.dtbo \
                 diwali-audio-idp-amoled.dtbo \
                 diwali-audio-qrd.dtbo \
                 diwali-audio-atp.dtbo \
                 diwali-audio-idp-hsp.dtbo \
                 diwali-audio-idp-usbc.dtbo
else
ifeq ($(CONFIG_LYNKCO_DTB),y)
dtbo-$(CONFIG_ARCH_DIWALI) += diwali-audio.dtbo \
                 diwali-audio-moto-lynkco-evb1.dtbo \
                 diwali-audio-moto-lynkco-evt1.dtbo
endif  #($CONFIG_LYNKCO_DTB,y)
endif  #($(CONFIG_MMI_DEVICE_DTBS),y)

#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-audio.dtbo \
                 parrot-audio-idp.dtbo \
                 parrot-audio-idp-wcn3990.dtbo \
                 parrot-audio-idp-wcn3990-amoled-rcm.dtbo \
                 parrot-audio-idp-wcn6750-amoled.dtbo \
                 parrot-audio-idp-wcn6750-amoled-rcm.dtbo \
                 parrot-audio-qrd.dtbo \
                 parrot-audio-qrd-wcn6750.dtbo \
                 parrot-audio-atp.dtbo
else
ifeq ($(CONFIG_GENEVA_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-audio.dtbo \
                 parrot-audio-moto-geneva-evb.dtbo
else ifeq ($(CONFIG_GENEVN_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-audio.dtbo \
                 parrot-audio-moto-genevn-evb.dtbo
endif
endif

#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_CAPE) += cape-audio.dtbo \
                 cape-audio-cdp.dtbo \
                 cape-audio-cdp-qhd.dtbo \
                 cape-audio-mtp.dtbo \
                 cape-audio-mtp-120fps.dtbo \
                 cape-audio-mtp-nodisplay.dtbo \
                 cape-audio-atp.dtbo \
                 cape-audio-qrd.dtbo \
                 ukee-audio-mtp.dtbo \
                 ukee-audio.dtbo \
                 ukee-audio-qrd.dtbo \
                 ukee-audio-atp.dtbo \
                 ukee-audio-mtp-120fps.dtbo \
                 ukee-audio-mtp-nodisplay.dtbo \
                 ukee-audio-cdp-qhd.dtbo \
                 ukee-audio-cdp.dtbo
else
# felix audio bringup
ifeq ($(CONFIG_FELIX_DTB),y)
dtbo-$(CONFIG_ARCH_CAPE) += cape-audio.dtbo \
                 cape-audio-moto-felix-evt1.dtbo \
                 cape-audio-moto-felix-evt1a.dtbo \
                 cape-audio-moto-felix-evt1b.dtbo \
                 cape-audio-moto-felix-evt1c.dtbo
endif  #($CONFIG_FELIX_DTB,y)
ifeq ($(CONFIG_ONELI_DTB),y)
dtbo-$(CONFIG_ARCH_CAPE) += cape-audio.dtbo \
                 cape-audio-moto-oneli-evt1.dtbo \
                 cape-audio-moto-oneli-dvt1b.dtbo
endif  #($CONFIG_ONELI_DTB,y)
ifeq ($(CONFIG_ZEEKR_DTB),y)
dtbo-$(CONFIG_ARCH_CAPE) += cape-audio.dtbo \
                 cape-audio-moto-zeekr-evb.dtbo
endif  #($CONFIG_ZEEKR_DTB,y)
ifeq ($(CONFIG_EQS_DTB),y)
dtbo-$(CONFIG_ARCH_CAPE) += cape-audio.dtbo \
                 cape-audio-moto-eqs-evt1.dtbo
endif  #($CONFIG_EQS_DTB,y)

dtbo-$(CONFIG_BRONCO_DTB) += cape-audio.dtbo \
                 cape-audio-moto-bronco-evb1.dtbo \
                 cape-audio-moto-bronco-dvt1.dtbo

endif  #($(CONFIG_MMI_DEVICE_DTBS),y)

 always-y    := $(dtb-y) $(dtbo-y)
 subdir-y    := $(dts-dirs)
 clean-files    := *.dtb *.dtbo
