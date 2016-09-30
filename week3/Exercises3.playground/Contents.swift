//: Playground - noun: a place where people can play

import UIKit
import Foundation


// Oppgave 1
extension String {
    subscript (i: Int) -> Character? {
        get {
            let n = self.characters.count
            
            if (i >= n || i < 0) {
                return nil
            }
            return [Character](self.characters)[i]
        }
    }
}

let a = "Hei"[0]
let b = "Hei"[1]
let c = "Hei"[4]

print(a)
print(b)
print(c)


// Oppgave 2

class LivingBeing {
    final var birthDate: Date
    final var birthPlace : String?
    
    init(birthDate : Date, birthPlace : String) {
        self.birthDate = birthDate
        self.birthPlace = birthPlace
    }
}

class Person : LivingBeing {
    var name : String?
}

class Scientist : Person {
        var iq : Int = 0
}

class MadScientist : Scientist {
    var madnessFactor : Int

    init(madnessfactor: Int, IQ: Int, name: String) {
        self.madnessFactor = madnessfactor
        super.init(birthDate: Date(), birthPlace: "Earth")
        self.iq = iq
        self.name = name
    }
    
    func overrideBirthdate(date: Date) {
        birthDate = date
    }
}

let madScientist = MadScientist(madnessfactor: 42, IQ: 32, name: "John Doe")
print(madScientist.birthDate)
madScientist.overrideBirthdate(date: Date() + 10)
print(madScientist.birthDate)


