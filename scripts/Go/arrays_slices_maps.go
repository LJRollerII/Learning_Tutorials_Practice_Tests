package main

import "fmt"

func main() {

	// Arrays //

	var arr1 [5]int  // use can use data types such as int, string, bool, etc. //

	arr1[1] = 20

	// An addiotnal way to define and set the values of an array (directly initialize).
	//arr1 := [5]int{1,2,3,4,5}

	fmt.Println(arr1)
	//fmt.Println(arr1[1])
	fmt.Println(len(arr1)) //Print the length of an array

	var arrTwoD[4][5] int // For two dimensional arrays //
	for i := 0, i < 4, i++ {
		for j := 0, j < 5, j++ {
			arrTwoD[i][j] = i * j
		}
	}

	fmt.Println(arrTwoD)

	// Slices //

	//Slices --> Lists in Python
	s1 := make([]string, 5)
	s2 := make([]int, 5)
	

	fmt.Println(s1)
	fmt.Println(s2)

	// To append slices //
	s :=  make([]int, 5)
	fmt.Println(len(s))
	s = append(s, elems...60) // elems is short for elements. You can pass as many elements as you want. //
	fmt.Println(len(s))

	fmt.Println(s)

	// TO copy slices//
	cp1 := make([]int, len(s))
	copy(cp1, s) // copy cp1 into slice (s) //

	// Slicing Operator//
	//This is similar to Python//

	fmt.Println(cp1[1:4]) // This means print 1 , 2, 3  (Just like in Python) //
	// Go cannot uses negative numbers like Python //


	// Maps --> Dictionaries in Python
}
