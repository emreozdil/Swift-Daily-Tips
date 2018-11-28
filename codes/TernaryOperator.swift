/*
 The ternary conditional operator is a special operator with three parts,
 which takes the form question ? answer1 : answer2. It’s a shortcut for
 evaluating one of two expressions based on whether question is true or
 false. If question is true, it evaluates answer1 and returns its value;
 otherwise, it evaluates answer2 and returns its value.
 */

// General usage for if/else
if condition {
    logic1()
} else {
    logic2()
}

// Ternary Usage
condition ? logic1() : logic2()
// Real life example
let height = shouldShowInformationView ? 100 : 50
