import UIKit

var greeting = "Hello, playground"


//Functions

/*
 
 Syntax
 
 func functionName(parameter1: Type, parameter2: Type) --> ReturnType {
            // function body
            // logic goes here
 
            return value
 }
 
 */


//Example 1
func greet(person: String) -> String{
    let greeting = "Hello, " + person + "!"
    return greeting
}

let message = greet(person: "Jay")
print(message)



//Example 2
func printWelcome(){
    print("Hello cohort #5")
}

printWelcome()


//Example 3

func add(number1: Int, number2: Int) -> Int{
    return number1 + number2
}
let result = add(number1: 46, number2: 87)
print("The addition between 46 + 87 = \(result)")


//Example 4
//Function with unnamed parameters
func multiply(_ x: Int, _ y: Int) -> Int {
    return x * y
}
print(multiply(6, 18))


//Example 5

func deliveryTime(minutes: Int) -> String {
    return "Ready in \(minutes) minutes"
}

let message2 = deliveryTime(minutes: 25)
print(message2)



/* MiniChallenge
 1.  Define a function called welcomeStudent.
 2.  The function should take one parameter: name of type String.
 3.  The function should return a String.
 4.  Inside the function, build a message like: "Welcome, [name]! Ready to learn Swift?".
 5.  Call the function with a sample name and print the result.
*/

func studentMessage(name: String) -> String {
    return "\(name) is enjoying learning SwiftUI"
}
let name = studentMessage(name: "Jay")
print(name)

