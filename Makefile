default: tar

.PHONY: clean

TARGET = rpi_dlna.tar

SOURCES = /etc/fstab /etc/systemd/system/srv-media-autousb.automount /etc/systemd/system/srv-media-autousb.mount /etc/udev/rules.d/90-mediausb.rules /usr/bin/minidlna.restart README.md

tar: clean
	tar cf $(TARGET) $(SOURCES)

clean:
	$(RM) $(TARGET)
