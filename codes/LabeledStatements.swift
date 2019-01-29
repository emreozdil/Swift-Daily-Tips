// Labeled Statements
// 
// In Swift, you can nest loops and conditional statements inside other 
// loops and conditional statements to create complex control flow structures.
// However, loops and conditional statements can both use the break statement
// to end their execution prematurely. Therefore, it is sometimes useful to be
// explicit about which loop or conditional statement you want a break statement
// to terminate. Similarly, if you have multiple nested loops, it can be useful
// to be explicit about which loop the continue statement should affect.

// To achieve these aims, you can mark a loop statement or conditional statement
// with a statement label. With a conditional statement, you can use a statement
// label with the break statement to end the execution of the labeled statement.
// With a loop statement, you can use a statement label with the break or
// continue statement to end or continue the execution of the labeled statement.

// A labeled statement is indicated by placing a label on the same line as the
// statement’s introducer keyword, followed by a colon.

// Here’s an example of this syntax for a for loop, although the principle is
// the same for all loops and switch statements:

loopLabel: for i in 1...10 {
	for j in 1...10 {
		let product = i * j
		print("Product is \(product)")
		break loopLabel
	}
}

// prints: Product is 1