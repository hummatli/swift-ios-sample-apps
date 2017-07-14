//: Playground - noun: a place where people can play

import UIKit

var arr1 = ["a", "b", "c"]
var arr2 = ["bo", "ro", "me"]

var arrGen = [String]()

for i in 0..<arr1.count {
    arrGen.append(arr1[i])
    arrGen.append(arr2[i])
}

print("Generated arr is \(arrGen)")
