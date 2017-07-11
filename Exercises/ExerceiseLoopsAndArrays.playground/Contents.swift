//: Playground - noun: a place where people can play

import UIKit

//Exercise arrays
var strs = [String]()

var doubles: [Double] = [2, 3, 4.4, 6]

var arr = ["Veli", "Memmed", "Mamed", "Husain", "Hasan"]


strs.append("School")
strs.append("University")
strs.append("HighSchool")

doubles.append(5.7)
doubles.append(4.5)
doubles.append(2.1)

arr.append("Tahir")
arr.append("Azer")
arr.append(contentsOf: strs)


print(doubles)
print(strs)
print(arr)

arr.remove(at: 0)
doubles.remove(at: 0)
strs.remove(at: 0)

print(doubles)
print(strs)
print(arr)

arr.removeAll()
doubles.removeAll()
strs.removeAll()

print(doubles)
print(strs)
print(arr)

arr.insert("Mamed", at: 0)

print(arr)


//Exercise loops

var oddNumbers = [Int]()

for n in 1...100 {
    if n % 2 == 1 {
        oddNumbers.append(n)
    }
}

print("Odd numbers less than or equal to 100 is \(oddNumbers)")


var sums = [Int]()

for on in oddNumbers {
    sums.append(on + 5)
}
print("Sums arr is \(sums)")


var index = 0
repeat {
    print("The sum is: \(sums[index])")
    index += 1
} while (index < sums.count)





