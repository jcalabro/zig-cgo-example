.PHONY: default build run

default: build run

build:
	# build the static zig library
	zig build

	# build the go program
	CC="zig cc -target x86_64-linux-musl" CGO_ENABLED=1 CGO_LDFLAGS="-static" GOOS=linux GOARCH=amd64 go build -a -ldflags '-extldflags "-static"' main.go

run:
	./main

