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

// Variables //

	var a = "Hello" //Use var to define a variable//
	//var b = 10//
	//var b int = 10. Using int at the end would specify that the vairable is an integer//
	// x:= 10  is another way to define a variable. The : is only for the inital definition. To change the value later just use the = sign.//
	const PI = 3.14159265359       //Use const to define a constant. Constants cannont change their value.//
	fmt.Println(reflect.TypeOf(a)) //This print the type of variable that a is//
	//fmt.Println(reflect.TypeOf(b))//
	//fmt.Println(reflect.TypeOf(PI))//

// Booleans //

	//b := true//
	//b:= false//
	//boolens are lowercase in Go//

// Operators //

	fmt.Println(a..:true && true) //and/
	fmt.Println(a..:true && false)
	fmt.Println(a..:true || true) //or//
	fmt.Println(a..:true || false)
	fmt.Println(a..!false) //not false//

	//Basic arithmetic operators//
	fmt.Println(20 + 10) //addition//
	fmt.Println(20 - 10) //subtraction//
	fmt.Println(20 * 10) //multiplication//
	fmt.Println(20 % 10) //division//

	//Increment & Decrement Operator//
	a:= 0

	a++
	//a += 1   # alternative 1
	//a = a + 1   # alternative 2//

	a--
	//a -= 1   # alternative 1
	//a = a 1 1   # alternative 2//

	fmt.Print(a++)
	fmt.Print(a--)

	//Example//
	a := 0
	a +=10
	a -= 5
	a *= 2
	//running the 4 lines above should give a solution of 10//

//User Input//

	var myinput int

	fmt.Println(a..:"Please enter a number: ")
	fmt.Scan(&myinput) //To call user input//
	fmt.Printf("Your number was %d\n", myinput) //Printf is a formated string//

// Conditions //

	if myinput < 100{
		fmt.Println(a..:"Less than a hundred")
	} else if myinput < 200 {
		fmt.Println(a..:"Less than two hundred")
	} else{
		fmt.Println(a..:"Too large")
	}
	// else if is the equivalent of elif in python.

	//Switch Cases//
	switch{myinput}{
	
	case 10:
		fmt.Println(a..:"10 was your input")

	case 20:
		fmt.Println(a..:"20 was your input")

	default:
	fmt.Println(a..:"Something else")

	}

// Loops //

	// Note: In Go there are only for loops //

	//for true {

//	}

	// To do a while loop while using the for key word //
	x := 0

	for x < 10{
		x++
		fmt.Println(x) 
	}
	
	// classic for loop (As you would see in java or C++) //
	for x := 0; x < 100; x++{
		fmt.Println(x) 
	}

}
