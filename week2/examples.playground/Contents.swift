//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Examples from Lecture 2

// Sending a closure as a parameter to a function
func start(closure: () -> ()) {
    
}

// Definere closure til en constant
let aClosure: () -> () = {
    print("Inside closure")
}

// Sort array with closure
let numbers = [324, 2342, 243, 1122, 3242]

// Alternative 2
let sortedNumbers2 = numbers.sorted { (x, y) -> Bool in
    x < y
}

// Alternative 3
let sortedNumbers3 = numbers.sorted {
    $0 < $1
}

// Optional parameter
// Use if let to check if value is present
func optionalHello(name: String?) {
    if let actualName = name {
        print(actualName)
    } else {
        print("No value")
    }
}

optionalHello(name: "Test")
optionalHello(name: nil)

