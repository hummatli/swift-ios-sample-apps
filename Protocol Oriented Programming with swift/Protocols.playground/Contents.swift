//: Playground - noun: a place where people can play

import UIKit

protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool { get set }
    
    mutating func start()
    mutating func turnOff()
}


struct SportsCar: Vehicle {
    var isRunning: Bool = false
    var description: String {
        if isRunning {
            return "Sports car currently running"
        } else {
            return "Sports car currently turned off"
        }
    }
    
    mutating func start() {
        
        if isRunning {
            print("Already started!")
        } else {
            isRunning = true
            print("Vroom")
        }
    }
    
    mutating func turnOff() {
        
        if isRunning {
            
            isRunning = false
            print("Crickets!")
        } else {
            
            print("Already dead!")
        }
    }
}



class SemiTruck: Vehicle {
    var isRunning: Bool = false
    
    var description: String {
        if isRunning {
            return "Semi truck currently running"
        } else {
            return "Semi truck currently turned off"
        }
    }
    
    func start() {
        
        if isRunning {
            print("Already started!")
        } else {
            isRunning = true
            print("Rumble")
        }
    }
    
    func turnOff() {
        
        if isRunning {
            
            isRunning = false
            print("put put silence")
        } else {
            
            print("Already shut down!")
        }
    }
    
    func blowAirHorn() {
        print("TOOOOOT :)")
    }
    
}


var car1 = SportsCar()
var truck1 = SemiTruck()

car1.start()
truck1.start()
truck1.blowAirHorn()

car1.turnOff()
//truck1.turnOff()

var vehicleArray: Array<Vehicle> = [car1, truck1]


for v in vehicleArray {
    print("\(v)")
    
    if let v = v as? SemiTruck {
        v.blowAirHorn()
    }
}






