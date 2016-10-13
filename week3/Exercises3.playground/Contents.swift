//: Playground - noun: a place where people can play

import UIKit
import Foundation


// Oppgave 1
extension String {
    subscript (i: Int) -> Character? {
        get {
            for(charIndex, character) in characters.enumerated() {
                if charIndex == i {
                    return character
                }
            }
            return nil
        }
    }
}

let a = "Hei"[0]
let b = "Hei"[1]
let c = "Hei"[4]
let d = "😸👻🙆🏽"[1]

print(a)
print(b)
print(c)


// Oppgave 2

class LivingBeing {
    final var birthDate = Date()
    final var birthPlace = "Unnamed"
}


class Person : LivingBeing {
    var name: String

    init(name: String) {
        self.name = name
    }
}


class Scientist : Person {
    var IQ : Int

    init(IQ: Int, name: String) {
        self.IQ = IQ
        super.init(name: name)
    }
}


class MadScientist : Scientist {
    var madnessFactor : Int

    init(madnessFactor: Int, IQ: Int, name: String) {
        self.madnessFactor = madnessFactor
        super.init(IQ: IQ, name: name)
    }
    
    convenience init(IQ: Int) {
        self.init(madnessFactor: 0, IQ: IQ, name: "Unnamed")
    }
    
    func overrideBirthdate(date: Date) {
        birthDate = date
    }
}


let madScientist = MadScientist(madnessFactor: 41, IQ: 32, name: "John Doe")
let madScientist2 = MadScientist(IQ: 32)


// Oppgave 3

class Timer {
    var hour: Int
    var minute: Int
    var second: Int
    
    var running: Bool = false
    var startedAt: Date?
    var stoppedAt: Date?

    init(hour: Int, minute: Int, second: Int) {
        self.hour = hour
        self.minute = minute
        self.second = second
    }
    
    convenience init() {
        self.init(hour: 0, minute: 0, second: 0)
    }
}


// 1. Kompilatoren feiler fordi variablene hour, minute og second ikke blir initialisert/tilordnet en verdi ved initialisering av klassen. Må defineres som optionals hvis de skal kunne være nil.
// 2. og 3.
let timer1 = Timer()
let timer2 = Timer(hour: 12, minute: 53, second: 0)


// Oppgave 4
class Animal {
    var birth : Date
    var death : Date?
    var aSleep = false
    
    final var isAlive : Bool {
        return self.death == nil
    }
    
    final var isSleeping : Bool {
        return self.aSleep
    }
    
    required init(birth: Date) {
        self.birth = birth
    }
    
    convenience init() {
        self.init(birth: Date())
    }
    
    func sleep() -> Void {
        aSleep = true
    }
    
    func sound() -> String {
        return "Unknown"
    }
}

let anim = Animal()
anim.isSleeping
anim.sleep()
anim.isSleeping
anim.sound()


// 3. og 4.
class Dog : Animal {
    let animalSound = "Bark"
    
    init() {
        super.init(birth: Date())
    }
    
    required init(birth: Date) {
        super.init(birth: birth)
    }
    
    override func sound() -> String {
        return "Dogs usually \(animalSound)"
    }
}

let dog = Dog()
print(dog.sound())


// 5.
class Bird : Animal {
    let animalSound = "Sing"
    
    init() {
        super.init(birth: Date())
    }
    
    required init(birth: Date) {
        super.init(birth: birth)
    }
    
    override func sound() -> String {
        return "Birds usually \(animalSound)"
    }
}


// 6. og 7.
let array = [Dog(), Bird(), Bird(), Dog()]

for animal in array {
    switch (animal) {
        case is Dog:
            print("It's a dog!")
        case is Bird:
            print("It's a bird!")
        default:
            print("Unknown")
    }
}


// Oppgave 5
protocol LivingBeings {
    var isAlive : Bool { get }
    var birthDate : Date { get set }
    var deathDate : Date? { get set }
}


extension LivingBeings {
    final var isAlive : Bool {
        return deathDate == nil
    }
}


class Frog : LivingBeings {
    var birthDate : Date
    var deathDate : Date?

    init(birthDate: Date) {
        self.birthDate = birthDate
    }
}

var frog = Frog(birthDate: Date())
frog.isAlive
frog.deathDate = Date()
frog.isAlive


// Oppgave 6
class School {
    var students : [Student]?
}

class Student {
    var address : Address?
}

class Address {
    var street : String?
    
    init(street: String?) {
        self.street = street
    }
}

var adresse = Address(street: "Christian Kroghs Gate")
var student = Student()
var westerdals = School()

student.address = adresse
westerdals.students = [student]

if let street = westerdals.students?.first?.address?.street {
    print("Studenten bor i \(street)")
} else {
    print("Kunne ikke hente gatenavn")
}


// Oppgave 7
var otherAddress = Address(street: "Nydalen Allé")

if (westerdals.students?.first?.address = otherAddress) != nil {
    print("Du satt en ny adresse")
} else {
    print("Det var ikke mulig å sette en ny adresse")
}


// Oppgave 8
extension School {
    subscript (i: Int) -> Student? {
        get {
            if let student = (students?[i]){
                return student
            }
            return nil
        }
    }
}

if let fullStreetName = westerdals[0]?.address?.street {
    print(fullStreetName)
} else {
    print("Kunne ikke hente fullstendig gatenavn")
}


// Oppgave 9
extension String{
    var length : Int {
        return self.characters.count
    }
    
    func reverse() -> String {
        var result = ""
        for i in stride(from: self.length - 1, to: -1, by: -1) {
            result += "\(self[i]!)"
        }
        return result
    }
    
    func contains(string: String) -> Bool {
        return self.range(of: string) != nil
    }
}

"AB".length
"AB".reverse()
"Abba".contains("AbA")
"Abba".contains("Abb")










