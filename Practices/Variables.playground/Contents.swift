import UIKit

//Variables - Values that can change
//Constants - Do not change

//Constants use "let"
//variables use "var"

var restaurantName = "Oxtail House"
restaurantName = "One Oxtail"
print(restaurantName)

let city = "Tampa"
print(city)

var specialDish = "Oxtail Soup"
var availableTables = 5
var dishPrice = 15.99
var isOpen = true

print ("Today's special dish: \(specialDish) - $\(dishPrice)")


var numberOfTables = 11
let ownerName = "Doug Mahoney"

print ("Oxtail House has \(numberOfTables) tables today, owned by \(ownerName)")


let oxtailSoupPrice = 10.50
let saladPrice = 7.50
let subTotal = oxtailSoupPrice + saladPrice
let tip = subTotal * 0.15
let total = subTotal + tip

print(total)

