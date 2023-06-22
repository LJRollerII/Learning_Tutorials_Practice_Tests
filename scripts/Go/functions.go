package main

import "fmt"

func main() {
	//hello()
	fmt.Println(add(x:10, y:20))
	//fmt.Println(add(a:10, b:20, c:30))
	//fmt.Println(sum(10,20,30,40,50))
	// arr := []int {10,20,30,40,50}
	//fmt.Println(arr...)  (You need to add the three dots otherwise the program will treat it as an array and the code will not work.)

	next_even_number := even_numbers()
	fmt.Println(next_even_number())
	fmt.Println(next_even_number())
	fmt.Println(next_even_number())
	fmt.Println(next_even_number())
	fmt.Println(next_even_number())
	fmt.Println(next_even_number())
	fmt.Println(next_even_number())
	fmt.Println(next_even_number())
	// When you print all of these you'll notice that it's a sequence. //
}

//func hello(){
//	fmt.Println("Hello World!")
//}

func add(x int, y int) int{
	return x + y

//func add(a, b, c) int{
//	return a + b + c     (Another way to add parameters if the datatypes are the same)

}

func sum(numbers...int) int{
	mysum := 0
	for _, number := range numbers {
		mysum += number
	}
	return mysum
}

// Closers //

//Closer are similar to yielders and generators in python//

func even_numbers() func() int {
	i := 0
	return  func() int {
		i += 2
		return i 
	}
}