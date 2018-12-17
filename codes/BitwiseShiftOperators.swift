// Bitwise Left and Right Shift Operators
// The bitwise left shift operator (<<) and bitwise right shift operator (>>)
// move all bits in a number to the left or the right by a certain number of
// places, according to the rules defined below.

// Bitwise left and right shifts have the effect of multiplying or dividing
// an integer by a factor of two. Shifting an integer’s bits to the left by
// one position doubles its value, whereas shifting it to the right by one
// position halves its value.

let number = 1024
let divisionByTwo = number >> 1
// 512
let multiplyByTwo = number << 1
// 2048

let pink: UInt32 = 0xCC6699
let redComponent = (pink & 0xFF0000) >> 16
// redComponent is 0xCC, or 204
let greenComponent = (pink & 0x00FF00) >> 8
// greenComponent is 0x66, or 102
let blueComponent = pink & 0x0000FF
// blueComponent is 0x99, or 153