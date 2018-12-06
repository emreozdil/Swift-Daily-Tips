// Repeat-While
// The other variation of the while loop, known as the repeat-while loop,
// performs a single pass through the loop block first, before considering
// the loop’s condition. It then continues to repeat the loop until the
// condition is false.

// The repeat-while loop in Swift is analogous to a do-while loop in
// other languages.

repeat {
    // move up or down for a snake or ladder
    square += board[square]
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
} while square < finalSquare
print("Game over!")