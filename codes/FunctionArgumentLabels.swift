// Function Argument Labels

// Normal usage
func awesomeFunc(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
awesomeFunc(firstParameterName: 1, secondParameterName: 2)

// Argument Label Usage
func awesomeFunc(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}
awesomeFunc(argumentLabel: 1)

// Reallife Example
// Consider this func is in subclassed UITableViewCell
func populate(with user: User) {
    nameLabel.text = user.name
    ageLabel.text = user.age
}

cell.populate(with: users[indexPath.row])
