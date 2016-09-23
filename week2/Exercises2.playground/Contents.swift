//: Playground - noun: a place where people can play

import UIKit
import Foundation


// Oppgave 1a
func minimum(a: Int, b: Int) -> Int {
    if a < b {
        return a
    }
    return b
}

minimum(a: 5, b: 2)
minimum(a: 1, b: 3)
minimum(a: 2, b: 2)


// Oppgave 1b
func maximum(a: Int, b: Int) -> Int {
    if a > b {
        return a
    }
    return b
}

maximum(a: 5, b: 2)
maximum(a: 1, b: 3)
maximum(a: 2, b: 2)


// Oppgave 2
func sumOfAllValues(inArray: [Int]) -> Int {
    var sum = 0
    for i in inArray {
        sum += i
    }
    return sum
}

let array1 = [34, 10, 10, 10, 100]
sumOfAllValues(inArray: array1)


// Oppgave 3a
func numbersBiggerThan(number: Int, list: [Int]) -> [Int] {
    return list.filter({ $0 > number })
}

numbersBiggerThan(number: 54, list: [34, 39, 100, 493, 1, 5])


// Oppgave 3b
func numbersBiggerThanWithNil(number: Int, list: [Int]) -> [Int]? {
    let temp = list.filter({ $0 > number })
    if (temp.count == 0) {
        return nil
    }
    return temp
}

numbersBiggerThanWithNil(number: 100, list: [32, 1, 51, 24, 39, 8, 14])


// Oppgave 4a og 4b
func repeatCharacter( _ character: Character, _ times: Int = 1) -> String {
    var temp = ""
    
    for _ in 0..<times {
        temp += String(character)
    }
    return temp
}

repeatCharacter(Character("W"), 5)
repeatCharacter(Character("W"))


// Oppgave 5a, 5b, 5c og 5d
enum CaseTo {
    case Uppercase
    case Lowercase
}

func setCase(text: String?, caseTo: CaseTo? = nil) -> String? {
    if let actualText = text{
        if(caseTo == .Lowercase){
            return actualText.lowercased()
        } else{
            return actualText.uppercased()
        }
    } else {
        return nil
    }
}

setCase(text: "Interstellar", caseTo: .Uppercase)
setCase(text: "Interstellar", caseTo: .Lowercase)
setCase(text: "Interstellar", caseTo: nil)
setCase(text: "Interstellar")
setCase(text: nil)


// Oppgave 6a og 6b
enum Calculation {
    case Product
    case Sum
}
func calculate(_ type: Calculation, _ numbers: Int...) -> Int {
    var sum = 0
    
    switch (type) {
        case .Product:
            sum = 1
            for n in numbers {
                sum *= n
        }
        case .Sum:
            for n in numbers {
                sum += n
        }
    }
    
    return sum
}

calculate(.Product, 2, 5, 5)
calculate(.Product, 10, 10)
calculate(.Sum, 2, 5, 5)
calculate(.Sum, 10, 10)


// Oppgave 6c
func calculate2(_ numbers: Int...) -> (product: Int, sum: Int) {
    var result = (sum: 0, product: 1)
    
    for n in numbers {
        result.sum += n
        result.product *= n
    }
    
    return result
}

let result = calculate2(2, 5, 5)
print("Produkt: \(result.product), Sum: \(result.sum)")


// Oppgave 7
func getCalculator(_ op: Character?) -> (_ numbers: Int...) -> Int {
    // Function declarations
    func add(_ numbers: Int...) -> Int {
        return numbers.reduce(0,+)
    }
    
    func multiply(_ numbers: Int...) -> Int {
        return numbers.reduce(1,*)
    }
    
    
    if let actualOperator = op {
        switch (actualOperator) {
            case "+":
                return add
            case "*":
                return multiply
            default:
                break
        }
    }
    return add
}

/*
 if let calcFn = getCalculator(Character("+")) {
    print(calcFn([3, 5, 2, 4]))
}
*/



