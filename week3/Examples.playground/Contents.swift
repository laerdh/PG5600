//: Playground - noun: a place where people can play

import UIKit
import Foundation

class LivingThing {
    
}

class Person : LivingThing {
    let birthDate : Date
    
    init(birthDate: Date) {
        self.birthDate = birthDate
    }
}

class Student {

    let birthDate : Date = Date()

}

let person = Person(birthDate: Date())

let person2: Any = Person(birthDate: Date())
person.birthDate

// Force unwrap
(person2 as! Person).birthDate

// Optional chaining
(person2 as? Person)?.birthDate

// Person not student
(person2 as? Student)?.birthDate


// Example 2
var robotsReady = false

func buildRocket(rocketDictionary: [String : String]?) -> String {
    
    if robotsReady, let actualDict = rocketDictionary, let rocketName =
        actualDict["rocketName"] {

        // Allows chaining of normal if statements
        print("returned")
        
        return "Failed"
    }
    
    guard robotsReady, let actualDictionary = rocketDictionary,
        let actualRocketName = actualDictionary["rocketName"]
        else {
        print("robots not ready")
            
        return "Failed"
    }
    
    return "built rocket \(actualRocketName)"
}

buildRocket(rocketDictionary: ["rocketName" : "Falcon 9"])
