//: Playground - noun: a place where people can play

import UIKit


func add(a: Double, b: Double) -> Double {
    return a + b
}

func subtruct(a: Int, b: Int) -> Int {
    return a - b
}

func multiply(a: Float, b: Float) -> Float {
    return a * b
}

func divide(a: Double, b: Double) -> Double {
    return a / b
}

func divideInt(a: Int, b: Int) -> Int {
    return a / b
}


add(a: 2, b: 8)

subtruct(a: 5, b: 6)

multiply(a: 3, b: 4)

var c = divideInt(a: 13, b: 5)
var d = divide(a: 13, b: 5)

print("c = \(c), d = \(d)")
