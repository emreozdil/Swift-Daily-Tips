// A defer statement is used for executing code just before
// transferring program control outside of the scope that
// the defer statement appears in.

func simpleDefer() {
    defer { print("End of the function") }

    print("Main body of the simleDefer function")
}
// Prints: Main body of the simleDefer function
// Prints: End of the function