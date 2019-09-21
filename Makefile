all: build

build:
	bash build.sh

dist:
	bash ./dist.sh

clean:
	rm -rf dest dist

.PHONY: all build dist
