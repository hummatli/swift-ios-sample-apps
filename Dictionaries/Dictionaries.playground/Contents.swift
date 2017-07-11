//: Playground - noun: a place where people can play

import UIKit

var namesOfIntegers = [Int: String]()

//adds and sets
namesOfIntegers[2] = "two"
namesOfIntegers[3] = "three"

print(namesOfIntegers)

//cleans
namesOfIntegers = [:]

print(namesOfIntegers)


var airports1 = ["XYZ": "Toronto Pearson", "LAX": "Los Angeles"]
var airports: [String: String] = ["XYZ": "Toronto Pearson", "LAX": "Los Angeles"]

print("Airport count is \(airports.count)")

if airports.isEmpty {
    print("The airport dictionary is empty")
}

airports["LHR"] = "London"
airports["LHR"] = "London Airport"

airports["DEV"] = "Devslope International"

airports["DEV"] = nil

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for key in airports.keys {
    print("Key = \(key)")
}


for value in airports.values {
    print("Value = \(value)")
}




