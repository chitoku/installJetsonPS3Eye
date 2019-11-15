#!/bin/bash

sudo cp ./gspca_main.ko /lib/modules/$(uname -r)/kernel/drivers/media/usb/gspca/
sudo cp ./gspca_ov534.ko /lib/modules/$(uname -r)/kernel/drivers/media/usb/gspca/

sudo depmod -a
cd /lib/modules/$(uname -r)/kernel/drivers/media/usb/gspca/
sudo insmod gspca_ov534.ko

lsmod
