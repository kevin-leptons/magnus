all: build

build:
	bash build.sh

debian:
	bash ./dist_debian.sh

tarbar:
	bash ./dist_tarbar.sh

clean:
	rm -rf dest dist

.PHONY: all build debian tarbar
