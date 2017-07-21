//: Playground - noun: a place where people can play

import UIKit

protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool { get set }
    var make: String { get set}
    var model: String { get set}
    
    mutating func start()
    mutating func turnOff()
}


extension Vehicle {
    
    var makeModel: String {
        return "\(make) \(model)"
    }
    
    mutating func start() {
        if isRunning {
            print("Already started!")
        } else {
            isRunning = true
            print("\(description) fired up!")
        }
    }
    
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("\(description) Crickets!")
        } else {
            print(" \(description) Already dead!")
        }
    }
    
}

struct SportsCar: Vehicle {
    var isRunning: Bool = false
    var description: String {
        return makeModel
    }
    
    var make: String
    var model: String

}



class SemiTruck: Vehicle {
    var isRunning: Bool = false
    
    var description: String {
        return makeModel
    }
    
    var make: String
    var model: String
    
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    
    func blowAirHorn() {
        print("TOOOOOT :)")
    }
    
}


var car1 = SportsCar(isRunning: false, make: "Porsche", model: "911")
var truck1 = SemiTruck(isRunning: false, make: "Peterbuilt", model: "Verago")

car1.start()
truck1.start()
truck1.blowAirHorn()

car1.turnOff()
truck1.turnOff()

var vehicleArray: Array<Vehicle> = [car1, truck1]


for v in vehicleArray {
    print("\(v.makeModel)")
    
    if let v = v as? SemiTruck {
        v.blowAirHorn()
    }
}



extension Double {
    var dollarString :String {
        return String(format: "$%.02f", self)
    }
}

var pct = 32.15 * 0.15
pct.dollarString




