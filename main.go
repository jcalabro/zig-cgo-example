package main

/*
#cgo LDFLAGS: -L./zig-out/lib -lcgo_static_linking -static
#include "zig_lib.h"
*/
import "C"
import "fmt"

func main() {
	fmt.Println("starting program")
	defer fmt.Println("done")

	C.my_zig_function()
}
