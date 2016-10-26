KERNEL_ARCH ?= arm64
CROSS_COMPILE ?= aarch64-linux-gnu-
CONFIG_DHD_USE_STATIC_BUF ?= y
PRODUCT_OUT=out/target/product/$(TARGET_PRODUCT)
TARGET_OUT=$(PRODUCT_OUT)/system

define bcmwifi-modules
	@echo "make wifi module KERNEL_ARCH is $(KERNEL_ARCH)"
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/broadcom/drivers/ap6xxx/bcmdhd_1_201_59_x ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) CONFIG_DHD_USE_STATIC_BUF=$(CONFIG_DHD_USE_STATIC_BUF) modules
	cp $(shell pwd)/hardware/wifi/broadcom/drivers/ap6xxx/bcmdhd_1_201_59_x/dhd.ko $(TARGET_OUT)/lib/
endef

AP6181:
	@echo "wifi module is AP6181"
	$(bcmwifi-modules)
AP6210:
	@echo "wifi module is AP6210"
	$(bcmwifi-modules)
AP6330:
	@echo "wifi module is AP6330"
	$(bcmwifi-modules)
AP6234:
	@echo "wifi module is AP6234"
	$(bcmwifi-modules)
AP6441:
	@echo "wifi module is AP6441"
	$(bcmwifi-modules)
AP6335:
	@echo "wifi module is AP6335"
	$(bcmwifi-modules)
AP6212:
	@echo "wifi module is AP6212"
	$(bcmwifi-modules)
AP62x2:
	@echo "wifi module is AP62x2"
	$(bcmwifi-modules)
AP6255:
	@echo "wifi module is AP6255"
	$(bcmwifi-modules)
bcm43341:
	@echo "wifi module is bcm43341"
	$(bcmwifi-modules)
bcm43241:
	@echo "wifi module is bcm43241"
	$(bcmwifi-modules)
bcm40181:
	@echo "wifi module is bcm40181"
	$(bcmwifi-modules)
bcm40183:
	@echo "wifi module is bcm40183"
	$(bcmwifi-modules)
bcm4354:
	@echo "wifi module is bcm4354"
	$(bcmwifi-modules)
bcm4356:
	@echo "wifi module is bcm4356"
	$(bcmwifi-modules)
bcm43458:
	@echo "wifi module is bcm43458"
	$(bcmwifi-modules)
define bcmd-usb-wifi-modules
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/broadcom/drivers/ap6xxx/bcmdhd-usb.1.201.88.27.x ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/vendor/broadcom/btusb/btusb_1_6_29_1/ ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/broadcom/drivers/ap6xxx/bcmdhd-usb.1.201.88.27.x/bcmdhd.ko $(TARGET_OUT)/lib/
	cp $(shell pwd)/vendor/broadcom/btusb/btusb_1_6_29_1/btusb.ko $(TARGET_OUT)/lib/
endef
AP6269:
	@echo "wifi module is AP6269"
	$(bcmd-usb-wifi-modules)
AP6242:
	@echo "wifi module is AP6242"
	$(bcmd-usb-wifi-modules)

rtl8189es:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8189es/rtl8189ES ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8189es/rtl8189ES/8189es.ko $(TARGET_OUT)/lib/

rtl8189ftv:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8189ftv/rtl8189FS ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8189ftv/rtl8189FS/8189fs.ko $(TARGET_OUT)/lib/

rtl8192eu:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8192eu/rtl8192EU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8192eu/rtl8192EU/8192eu.ko $(TARGET_OUT)/lib/

rtl8723bs:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8723bs/rtl8723BS ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8723bs/rtl8723BS/8723bs.ko $(TARGET_OUT)/lib/

rtl8723bu:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8723bu/rtl8723BU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8723bu/rtl8723BU/8723bu.ko $(TARGET_OUT)/lib/

rtl8188eu:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8188eu/rtl8xxx_EU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8188eu/rtl8xxx_EU/8188eu.ko $(TARGET_OUT)/lib/

rtl8812au:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8812au/rtl8812AU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8812au/rtl8812AU/8812au.ko $(TARGET_OUT)/lib/

rtl8822bu:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8822bu/rtl8822BU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8822bu/rtl8822BU/8822bu.ko $(TARGET_OUT)/lib/

mt7601u:
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/mtk/drivers/mt7601 ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/mtk/drivers/mt7601/mt7601usta.ko $(TARGET_OUT)/lib/
	cp $(shell pwd)/hardware/wifi/mtk/drivers/mt7601/mtprealloc.ko $(TARGET_OUT)/lib/

mt7603u:
	$(MAKE) CROSS_COMPILE=$(CROSS_COMPILE) LINUX_SRC=$(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ RT28xx_DIR=$(shell pwd)/hardware/wifi/mtk/drivers/mt7603 -f $(shell pwd)/hardware/wifi/mtk/drivers/mt7603/Makefile
	cp $(shell pwd)/hardware/wifi/mtk/drivers/mt7603/os/linux/mt7603usta.ko $(TARGET_OUT)/lib/
	cp $(shell pwd)/hardware/wifi/mtk/drivers/mt7603/os/linux/mtprealloc.ko $(TARGET_OUT)/lib/
qca9377:
	$(MAKE) -C $(shell pwd)/hardware/wifi/qualcomm/drivers/qca9377/AIO/build drivers BOARD_TYPE=x86-android IF_TYPE=SDIO KERNELPATH=$(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ
	cp $(shell pwd)/hardware/wifi/qualcomm/drivers/qca9377/AIO/rootfs-x86-android.build/lib/modules/wlan.ko $(TARGET_OUT)/lib/
	cp $(shell pwd)/hardware/wifi/qualcomm/drivers/qca9377/AIO/rootfs-x86-android.build/lib/modules/cfg80211.ko $(TARGET_OUT)/lib/
	cp $(shell pwd)/hardware/wifi/qualcomm/drivers/qca9377/AIO/rootfs-x86-android.build/lib/modules/compat.ko $(TARGET_OUT)/lib/
multiwifi:
	@echo "make wifi module KERNEL_ARCH is $(KERNEL_ARCH)"
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8189es/rtl8189ES ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8189es/rtl8189ES/8189es.ko $(TARGET_OUT)/lib/
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8189ftv/rtl8189FS ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8189ftv/rtl8189FS/8189fs.ko $(TARGET_OUT)/lib/
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8188ftv/rtl8188FU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8188ftv/rtl8188FU/8188fu.ko $(TARGET_OUT)/lib/
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8192eu/rtl8192EU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8192eu/rtl8192EU/8192eu.ko $(TARGET_OUT)/lib/
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8723bs/rtl8723BS ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8723bs/rtl8723BS/8723bs.ko $(TARGET_OUT)/lib/
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8188eu/rtl8xxx_EU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8188eu/rtl8xxx_EU/8188eu.ko $(TARGET_OUT)/lib/
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/realtek/drivers/8812au/rtl8812AU ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/realtek/drivers/8812au/rtl8812AU/8812au.ko $(TARGET_OUT)/lib/
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/broadcom/drivers/ap6xxx/bcmdhd_1_201_59_x ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/broadcom/drivers/ap6xxx/bcmdhd_1_201_59_x/dhd.ko $(TARGET_OUT)/lib/
	$(MAKE) -C $(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ M=$(shell pwd)/hardware/wifi/mtk/drivers/mt7601 ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules
	cp $(shell pwd)/hardware/wifi/mtk/drivers/mt7601/mt7601usta.ko $(TARGET_OUT)/lib/
	cp $(shell pwd)/hardware/wifi/mtk/drivers/mt7601/mtprealloc.ko $(TARGET_OUT)/lib/
	$(MAKE) CROSS_COMPILE=$(CROSS_COMPILE) LINUX_SRC=$(shell pwd)/$(PRODUCT_OUT)/obj/KERNEL_OBJ RT28xx_DIR=$(shell pwd)/hardware/wifi/mtk/drivers/mt7603 -f $(shell pwd)/hardware/wifi/mtk/drivers/mt7603/Makefile
	cp $(shell pwd)/hardware/wifi/mtk/drivers/mt7603/os/linux/mt7603usta.ko $(TARGET_OUT)/lib/
