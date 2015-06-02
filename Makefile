all: build build-utils

.PHONY: all

clean:
	find . -type f -iname "*.o" | xargs -iFILE rm FILE
	rm -f FreeShip
	rm -f FreeShip.dbg

build:
	lazbuild -B --widgetset=qt FreeShip.lpi

build-utils: versinfo

versinfo:
	lazbuild -B Utils/versinfo.lpi

install:
	# ./install-system.sh

uninstall:
	# ./uninstall-system.sh

release:
	# ./release.sh

zipbin:
	./zipbin.sh
