//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var tires = 4
    var headlights = 2
    var hoursepower = 567
    var model = "Lacetti"
    
    func drive() {
        //Accelerate the vehicle
    }
    
    func brake() {
        
    }
}

let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

func passByValue(str: String) {
    str = "This is in"
}

print(ford.model)

passByReference(vehicle: ford)

print(ford.model)

var strOut = "This is out"

print(strOut)
passByValue(str: strOut)



