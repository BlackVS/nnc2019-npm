@echo Badge flasher
@echo You need:
@echo  * python3 installed
@echo  * esptool package installed
@echo Install esptool:
pip3 install esptool
@echo Check com ports:
mode
@SET port=COM4

esptool.py --chip esp32 --port %port% --baud 2000000 --before default_reset --after hard_reset write_flash -z --flash_mode qio --flash_freq 40m --flash_size detect 0xd000 ota_data_initial.bin 0x1000 bootloader.bin 0x10000 firmware.bin 0x8000 partitions.bin

