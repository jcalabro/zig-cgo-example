# Zig CGO Example

A small repo demonstrating how to build a static Go executable using a statically linked Zig library.

To build and run, make sure you have zig 0.14.0 and go 1.24.1 installed, then:

```
$ make
# build the static zig library
zig build
# build the go program
CC="zig cc -target x86_64-linux-musl" CGO_ENABLED=1 CGO_LDFLAGS="-static" GOOS=linux GOARCH=amd64 go build -a -ldflags '-extldflags "-static"' main.go
./main
starting program
Hello from zig!
done

$ ldd ./main
        not a dynamic executable
```
