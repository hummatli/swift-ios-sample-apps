//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var tires = 4
    var headlights = 2
    var hoursepower = 567
    var model = "Lacetti"
    var make: String?
    var currentSpeed: Double = 0
    
    init() {
        print("I am parent")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}


class SportCar: Vehicle {
    
    override init() {
        super.init()
        print("I ma child")
        make = "BMW"
        model = "3 series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
    
}

let car = SportCar()