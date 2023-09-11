// A simple function to add two int numbers
package adder

import (
	"github.com/Twaha-Rahman/go-demo-project/internal"
)

// Add, adds two int numbers and return their sum as int
//
// It takes two parameters, `a` and `b`. Both of them are just int
func Add(a int, b int) int {
	return a + b + internal.Zero
}
