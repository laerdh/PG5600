//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Oppgave 1
let cont = "Swift er fett!"

// 1.1
// cont = "Trying to change a constant"

// 1.2
// Will not work because constant is assigned at compile-time and can not be changed

// 1.3
var cont2 = "Swift er fett!"
cont2 = "Trying to change a constant"
print(cont2)


// Oppgave 2
// Explicitly String
let const : String = "iOS FTW"

// Implisit String, Type Inference
let const2 = "iOS FTW"


// Oppgave 3
let n = 5600
let s = "PG"

let both1 = "\(s)\(n)"
let both2 = s + String(n)


// Oppgave 4
let n1 = 5
let n2 = 120
let sum = "\(n1 * n2)"

print(sum)


// Oppgave 5
let s1 = "This is a test"
let s2 = "This is a test"

if (s1 == s2) {
    print("Strings are equal")
} else {
    print("Strings do not match")
}


// Oppgave 6
let t = (5600, "iOS Programmering")
print("PG\(t.0)  - \(t.1)")


// Oppgave 7
let array = ["Falcon 9", "Dragon"]

for s in array {
    print(s)
}

for s in array {
    for letter in s.characters {
        print(letter)
    }
}


// Oppgave 8
let dictionary = [ "Lars" : 29, "Mari" : 29 ]

for (key, value) in dictionary {
    print(key + " -> " + String(value))
}


// Oppgave 10
let rockets : [Any?] = ["Falcon 9", nil, -999, nil, "Atlas V", nil, "Space Shuttle", nil, "My Water bottle-rocket"]
let numberOfLaunches = [19, 55, 135, 1]

let filteredRockets = rockets.filter { $0 is String }

for i in 0..<filteredRockets.count {
    var text = "launches"
    if (numberOfLaunches[i] == 1) {
        text = "launch"
    }
    print("\(filteredRockets[i]!) : \(numberOfLaunches[i]) \(text)")
}


// Oppgave 11


