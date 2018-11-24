/*
 Apply this attribute to a function or method declaration to suppress the
 compiler warning when the function or method that returns a value is called
 without using its result.
 */
@discardableResult
func bumpUp() -> Int {
    // In this example, consider We have a model which is responsible to manage
    // pagination at our requests. This func bumps up the pageSize value
    // of the model. If you need that value, you can take it like;
    // let pageSize = pageItem.bumpUp()
    // If you not, you can just call pageItem.bumpUp() to increase value.
    pageSize += 1
    return pageSize
}
