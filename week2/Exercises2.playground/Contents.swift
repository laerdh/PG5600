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
    return inArray.reduce(0,+)
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
    switch (type) {
        case .Product:
            return numbers.reduce(1,*)
        case .Sum:
            return numbers.reduce(0,+)
    }
}

calculate(.Product, 2, 5, 5)
calculate(.Product, 10, 10)
calculate(.Sum, 2, 5, 5)
calculate(.Sum, 10, 10)


// Oppgave 6c
func calculate2(_ numbers: Int...) -> (product: Int, sum: Int) {
    let p = numbers.reduce(1, *)
    let s = numbers.reduce(0, +)

    return (product: p, sum: s)
}

let result = calculate2(2, 5, 5)
print("Produkt: \(result.product), Sum: \(result.sum)")


// Oppgave 7
func getCalculator(_ op: Character?) -> ((_ numbers: Int...) -> Int)? {
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
                return nil
        }
    }
    return nil
}


if let calcFn = getCalculator(Character("+")) {
    print(calcFn(1, 3, 5, 3))
}


// Oppgave 8
func request(_ address: String, _ infoFunction: (String?) -> Void) {
    switch (address) {
        case "http://www.vg.no":
            infoFunction("Verdens Gang")
        case "http://www.aftenposten.no":
            infoFunction("Aftenposten")
        default:
            infoFunction(nil)
    }
}

request("http://www.vg.no", { description in
    if let actualDescription = description {
        print(description)
    } else {
        print("Fant ikke noen beskrivelse")
    }
})

request("http://www.test.no", { description in
    if let actualDescription = description {
        print(description)
    } else {
        print("Fant ikke noen beskrivelse")
    }
})


// Oppgave 9a, 9b og 9c
enum HTTPMethod {
    case GET
    case POST
    case PUT
    case DELETE
}
func startRequesting(url: String?, method: HTTPMethod, success: (AnyObject) -> Void, failure: ((NSError) -> Void)? = nil) {
    if let actualUrl = url {
        success("Got result from \(actualUrl) when using \(method)!" as AnyObject)
    } else {
        if let actualFailure = failure {
            actualFailure(NSError(domain: "Failed to connect to \(url)", code: 404, userInfo: nil))
        }
    }
}


// Test
startRequesting(url: nil, method: .GET, success: { (response) in
    print(response)
}, failure: { (error) in
    print(error)
})

startRequesting(url: "teambakkis.no", method: .GET, success: { (response) in
    print(response)
    }, failure: { (error) in
    print(error)
})

startRequesting(url: "teambakkis.no", method: .POST, success: { (response) in
    print(response)
})


// Oppgave 10
struct Coordinate {
    var lat : Float
    var long : Float
}

class GeoCache {
    var coordinate : Coordinate
    var name : String
    var hint : String
    var log = [String]()
    
    init(coordinate: Coordinate, name: String, hint: String) {
        self.coordinate = coordinate
        self.name = name
        self.hint = hint
    }
    
    func signLog(message: String) {
        log.append(message)
    }
    
    func description() -> String {
        return "\(name)\n\(coordinate.lat)\n\(coordinate.long)\nHint: \(hint)\n\(log.description)"
    }
}

let cache = GeoCache(coordinate: Coordinate.init(lat: 59.0, long: 42.0), name: "Westerdals", hint: "Room 81")
cache.signLog(message: "Someone was here...")
cache.signLog(message: "I was here")

print(cache.description())

