// Using range will allow us to iterate over collections. //

package main

import "fmt"

func main() {

// For ordinary range //

	numbers := []int{10, 23, 65, 77, 81, 90, 2, 7}

	for idx, number := range numbers {
		fmt.Printf("Value at index %d is %d\n", idx, number)
	//for _, number := range numbers {
	//	fmt.Printf("Value is %d\n",number)   This is to get the number without the index//
	}

// For range using maps //

	mymap := map[string]int{"A": 1, "B": 6, "C": 9, "D": 55}

	for key, value := range mymap {
		fmt.Printf("Key %s has value %d\n", key, value)
		//Note: Don't rely on order when running the code. Values are correct, but it may not be listed in order.//
	//for _, value := range mymap {
	//	fmt.Printf(value)    This is to just print the value (In this case of this code, the letters (A,B,C,D)).//

}
