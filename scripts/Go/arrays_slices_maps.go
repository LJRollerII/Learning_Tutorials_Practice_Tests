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

	// Maps --> Dictionaries in Python
}
