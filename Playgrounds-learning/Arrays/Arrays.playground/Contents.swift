//: Playground - noun: a place where people can play

import UIKit

var arrInt: [Int] = [45, 32, 20, 100]

var employeeSalaries1 = [45000.0, 32000.0, 20000.0, 100000.0]

var employeeSalaries2: [Any] = [45000.0, 32000.0, 20000.0, "100000.0"] // It works

//var employeeSalaries3 = [45000.0, 32000.0, 20000.0, "100000.0"] // It does  not work

//var employeeSalaries4: Int = [45000.0, 32000.0, 20000.0, "100000.0"] // It does  not work


//var employeeSalaries: Double = [45000.0, 32000.0, 20000.0, 100000.0] // It's not worrking. When declearing Double you need enclose it in square brace


var employeeSalaries: [Double] = [45000.0, 32000.0, 20000.0, 100000.0]
var employeeSalaries5: Array<Double> = [45000.0, 32000.0, 20000.0, 100000.0] // it works too


print(employeeSalaries.count)

employeeSalaries.append(33330.0)

print(employeeSalaries.count)

employeeSalaries.remove(at: 1)

print(employeeSalaries.count)

var students = [String]() // empty arr

var students2: [String] // uninitilaized arr

students.append("Ali")
students.append("Sattar")

print(students)
		