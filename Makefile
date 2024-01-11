pc-usb: pc-usb.o
	gcc -L /opt/homebrew/Cellar/libusb/1.0.26/lib/ -o pc-usb pc-usb.o -l usb-1.0

pc-usb.o: pc-usb.c
	gcc -c -I /opt/homebrew/Cellar/libusb-compat/0.1.8/include -I /opt/homebrew/Cellar/libusb/1.0.26/include -DDEBUG -g -o pc-usb.o pc-usb.c

