// Notes: 1. In Go you cannot run unused imports in the code//
// 2. In the GoLand IDE you can use go run in the terminal to run the code (ex. go run main.go). You can also press the green play button.//
// 3. If you want to compile it into an executable, use go build in the terminal (ex. go build main.go). This will create an exe file.

package main

import (
	"fmt"
	"reflect"
)

// To create a main function that is also runable//
func main() {
	fmt.Println("Hello World") //fmt.Println is used to output something onto the screen//

	var a = "Hello" //Use var to define a variable//
	//var b = 10//
	//var b int = 10. Using int at the end would specify that the vairable is an integer//
	// x:= 10  is another way to define a variable. The : is only for the inital definition. To change the value later just use the = sign.//
	const PI = 3.14159265359       //Use const to define a constant. Constants cannont change their value.//
	fmt.Println(reflect.TypeOf(a)) //This print the type of variable that a is//
	//fmt.Println(reflect.TypeOf(b))//
	//fmt.Println(reflect.TypeOf(PI))//
}
