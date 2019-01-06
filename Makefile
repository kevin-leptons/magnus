all: build

build:
	./build.sh

dist:
	./dist.sh

clean:
	rm -rf dest dist

.PHONY: all build dist
