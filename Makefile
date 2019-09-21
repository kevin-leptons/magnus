all: build

build:
	bash build.sh

dist-debian:
	bash ./dist_debian.sh

dist-tarbar:
	bash ./dist_tarbar.sh

clean:
	rm -rf dest dist

.PHONY: all build dist-debian dist-tarbar
