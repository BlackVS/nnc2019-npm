#!/bin/bash

#To flash all build output, run 'make flash' or:
#python /data/esp-idf/components/esptool_py/esptool/esptool.py 
# --chip esp32 --port /dev/ttyUSB0 --baud 115200 
# --before default_reset --after hard_reset write_flash -z --flash_mode dio 
# --flash_freq 40m 
# --flash_size detect 
# 0xd000 /data/nnc/badge-os-cpp/build/ota_data_initial.bin 
# 0x1000 /data/nnc/badge-os-cpp/build/bootloader/bootloader.bin 
# 0x10000 /data/nnc/badge-os-cpp/build/badge-00.bin 0x8000 
# /data/nnc/badge-os-cpp/build/partitions.bin

esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 2000000 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0xd000 ota_data_initial.bin 0x1000 bootloader.bin 0x10000 firmware.bin 0x8000 partitions.bin

