BMP_PATH = /dev/cu.usbmodemD6CEAEB1

flash: build/$(PROJECT).elf
	arm-none-eabi-gdb --batch \
					  -ex "target extended-remote $(BMP_PATH)" \
					  -ex 'monitor version' \
					  -ex 'monitor swdp_scan' \
					  -ex 'attach 1' \
					  -ex "file build/$(PROJECT).elf" \
					  -ex 'load' \
					  -ex 'compare-sections'


debug: build/$(PROJECT).elf
	arm-none-eabi-gdb \
					  -ex "target extended-remote $(BMP_PATH)" \
					  -ex 'monitor version' \
					  -ex 'monitor swdp_scan' \
					  -ex 'attach 1' \
					  -ex "file build/$(PROJECT).elf"

power:
	arm-none-eabi-gdb --batch \
					  -ex "target extended-remote $(BMP_PATH)" \
					  -ex 'monitor tpwr enable'

unpower:
	arm-none-eabi-gdb --batch \
					  -ex "target extended-remote $(BMP_PATH)" \
					  -ex 'monitor tpwr disable'
