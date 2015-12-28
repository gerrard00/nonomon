PREFIX = $(DESTDIR)/usr/local
BINDIR = $(PREFIX)/bin
TARGET = nonomon

install:
	cp $(TARGET) $(BINDIR)/$(TARGET)	

uninstall:
	rm $(BINDIR)/$(TARGET)	
