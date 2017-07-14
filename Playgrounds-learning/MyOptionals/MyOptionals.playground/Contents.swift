//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings: Int?


//print(lotteryWinnings!) // This gives an error. Option is nil

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings = 100

if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?

vehicle = Car()

print(vehicle?.model)

vehicle?.model = "Lacetti"

if let v = vehicle, let m = v.model {
    print(m)
}


var cars: [Car]?
cars = [Car]()

if let carArr = cars , carArr.count > 0 {
    //only execute if not nil and if more than 0 elements
} else {
    cars?.append(Car())
    print(cars?.count)
}



class Person {
    private var _age: Int!
    
    var age : Int { // This a getter and age is called computed property
        if _age == nil {
            _age = 0
        }
        
        return _age
    }
    
    func setAge(age: Int) {
        self._age = age
    }
    
}

var jack = Person()


class Dog {
    
    var species: String
    
    init(someSpecies: String) {
        species = someSpecies
    }
}




