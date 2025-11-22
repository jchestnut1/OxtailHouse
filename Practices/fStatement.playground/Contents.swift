import UIKit


// if - else if - else

/*
 
 ----------- Syntax --------------
 
 if conditon1 {
    this block runs if condition is true
 } else if condition2 {
    this block runs if conditon1 is false and condition2 is true
 } else {
    this block runs if none of the above conditons are true
 }
 
 */


// ---------- Example 1 --------------

var guests = 7
let capacity = 10

if guests > capacity {
    print("Over Capacity!")
} else {
    print("We can seat this party.")
}


//----------- Example 2 --------------

let rating = 4.2

if rating >= 4.5 {
    print("Excellent")
} else if rating >= 3.5 {
    print("Good")
} else {
    print("Needs Improvement")
}


//----------- example 3 ---------------

let isOpen = true
let hasOutdoorSeating = true

if isOpen && hasOutdoorSeating {
    print("Open with Outdoor seating!")
} else if isOpen && !hasOutdoorSeating {
    print("Open indoor only")
} else {
    print("Closed")
}


//--------- example 4 -----------------

let userName = "Ken"
if userName == "Ken"{
    print("Hello Ken!")
} else {
    print("Unknown user")
}

// '=' (Assign a value)
// '==' (Compares values)

//-------- example 5 (Ternary) ----------------

let price = 12.0
let label = price > 10 ? "Premium" : "Regular"
print(label)

// '?' (triggers conditional statement with two values to follow.
// first value if true will return "premium"


//------- example 6 ----------------

let children = 2
let groupSize = 5

if groupSize >= 8 {
    print("Large Group - call manager")
} else if children > 0 {
    print("Offer kids menu")
} else {
    print("Standard Seating")
}

//Minichallenge

var isVIP = false

if isVIP == false{
    print("Is not VIP")
} else {
    print("VIP")
}


