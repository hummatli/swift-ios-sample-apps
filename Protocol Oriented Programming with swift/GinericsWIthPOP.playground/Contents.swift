//: Playground - noun: a place where people can play

import UIKit


func intAdder(number: Int) -> Int {
    return number + 1
}


intAdder(number: 15)


func doubleAdder(number: Double) -> Double {
    return number + 1
}

doubleAdder(number: 15.0)

func genericAdder<T: Strideable>(number: T) -> T {
    return number + 1
}

genericAdder(number: 15)
genericAdder(number: 15.0)