import UIKit

//ARRAYS (The ability to hold multiple values under one variable.)
//Values are in a sequential order, has to be of the same data type

let dishes = ["Pizza" , "Burger" , "Pasta" , "Rice"]
print(dishes[0])  //access to the data
print(dishes[2])


//create mutable array
var orders = [String]()
orders.append("Soup")
orders.append("Burgers")
print(orders)



//DICTIONARIES
let menuPrices = [
    "pizza" : 13.99,
    "salad" : 6.60,
    "pasta" : 12.25
]

print(menuPrices["pizza"]!)

//challenge 1 - create dictionary for drinks

let drinkPrices = [
    "Coke" : 3.99,
    "Powerade" : 3.75,
    "Sprite" : 2.50,
    "Gatorade" : 1.50
]

print(drinkPrices["Coke"]!)


// foreach

let fruits = [
    "Apples": 1.99,
    "Bananas": 0.50,
    "Grapes": 3.25,
    "Pineapple": 1.75
]

fruits.forEach {fruits, price in
    if price > 1.50{
        print("\(fruits): $\(price)")
    }
}


//challenge 2

drinkPrices.forEach{ drink, price in
    print("\(drink) - $\(price)")
}
