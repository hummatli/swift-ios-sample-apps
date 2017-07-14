//: Playground - noun: a place where people can play

import UIKit


//Loops

var salaries = [32000.0, 87000.0, 43000.0, 32000.0 , 87000.0, 43000.0, 32000.0 , 87000.0, 43000.0, 32000.0]


//While loop
var index = 0
repeat {
    salaries[index] += (salaries[index] * 0.10)
    index += 1
} while (index < salaries.count)

print(salaries)



//for loop

for x in 1...5 { // Inclusive
    print("Index x = \(x)")
}

for z in 1..<5 {
    print("Index z = \(z)")
}

for i in 0..<salaries.count {
    salaries[i] += salaries[i] * 0.10
}

print(salaries)

for salary in salaries {
    print("Salari is \(salary)")
}