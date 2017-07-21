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


func intMultiplier(lhs: Int, rhs: Int) -> Int {
    return lhs * rhs
}

intMultiplier(lhs: 2, rhs: 5)


func doubleMultiplier(lhs: Double, rhs: Double) -> Double {
    return lhs * rhs
}

doubleMultiplier(lhs: 2.0, rhs: 5.0)


protocol Numeric {
    func *(lhs: Self, rhs: Self) -> Self
}

extension Double: Numeric {}
extension Float: Numeric {}
extension Int: Numeric {}


func genericMultiplier<T: Numeric>(lhs: T, rhs: T) -> T {
   return lhs * rhs
}

genericMultiplier(lhs: 5, rhs: 6)
genericMultiplier(lhs: 5.6, rhs: 6)




//protocol Numeric {
//    func *(lhs: Self, rhs: Self) -> Self
//}
//
//extension Numeric {
//    func multiply(lhs: Self, rhs: Self) -> Self {
//        return lhs * rhs
//    }
//}
//
//extension Double: Numeric {}
//extension Float: Numeric {}
//extension Int: Numeric {}
//
//1.multiply(lhs: 2, rhs: 3.4)







