package main

import (
	"fmt"
	"slsa-test/pkg/hello"
)

var gitTag = "dev"

func main() {
	hello.Hello()
	fmt.Println("git tag: ", gitTag)
}
