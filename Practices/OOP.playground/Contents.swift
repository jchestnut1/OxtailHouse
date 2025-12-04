import UIKit

//OOP (Object Oriented Programming)

/*
    A class is used to define a custom type that groups together data (properties)
    and behaviour (methodds).
    It acts as a blueprint for creating objects, allowing us to model real-world
    entities like customers, books, dogs, etc.
 
 
    -------- SYNTAX ----------
 
    class ClassName {
        var propertyName1: DataType
        var propertyName2: DataType
 
        init(propertyName1: DataType, propertyName2: DataType){
            self.propertyName1 = propertyName1
            self.propertyName2 = propertyName2
        }
        func functionName() -> ReturnType {
 
 
        }
    }
 */



// Example 1

class Dog {
    var name: String
    var age: Int
    
    init (name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func bark (){
        print("\(name) Says Woof!")
    }
}

let dog1 = Dog(name: "Doggy", age: 2)
let dog2 = Dog(name: "Scooby", age: 50)

dog1.bark()
dog2.bark()



//Example 2

class Customer{
    //properties
    var name: String
    var email: String
    var visits: Int
    var phoneNumber: String
    
    //initializer
    init (name: String, email: String, visits: Int, phoneNumber: String){
        self.name = name
        self.email = email
        self.visits = visits
        self.phoneNumber = phoneNumber
    }
    
    //methods
    func greeting()  -> String{
        return "Welcome back, \(name)"
    }
    func addVisit() {
        visits += 1
    }
    func summary() {
        "\(name) - Visits: \(visits)"
    }
    func contactCard() -> String{
        """
        Name: \(name)
        Email: \(email)
        Visits: \(visits)
        Phone Number: \(phoneNumber)
        """
    }
}

let customer1 = Customer(
    name: "Jay",
    email: "jay320@yahoo.com",
    visits: 2,
    phoneNumber: "8138451818")


print(customer1.contactCard())




