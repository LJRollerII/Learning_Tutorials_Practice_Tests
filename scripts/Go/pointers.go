package main

import "fmt"

func change_value(val int) {
	fmt.Println(val)
	//val = 200            Use this to pass the value of a
	//fmt.Println(val)
}

func change_reference(val *int) {
	fmt.Println(*val)
	//*val = 500
}

func main() {

	var a int
	a = 10

	change_value(a)
	change_reference(&a) //This passes the variable a

	ptr := &a
	fmt.Println(ptr) //Use(*ptr) to dereference the pointer and get the value

	//How to define pointers using the var keyword

	var ptr *int //This is your pointer

	a := 10

	ptr = &a

	var pptr **int //Create a pointer pointer

	pptr = &ptr

	fmt.Println(ptr)
	fmt.Println(pptr) //If you dereference this one time (*) you'll get the pointer to a , if dereference this twice (**), you'll get the value of a

	//Note you can add multiple pointers if needed.
}
