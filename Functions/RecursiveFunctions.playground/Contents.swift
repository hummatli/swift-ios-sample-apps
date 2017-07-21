//: Playground - noun: a place where people can play

import UIKit


//For loop
func printNumbers(max: Int) {
    for x in 0...max {
        print(x)
    }
}

printNumbers(max: 3)


//Recursive function
func printNumbersRec(max: Int) {
    if max > 0 {
        printNumbers(max: max - 1)
    }
    print(max)
}

printNumbersRec(max: 4)



//Factorial ofnon negative integer
//3! = 1 * 2 * 3 = 6

func factorialFirst(num: Int) -> Int {
    
    var factorial = 0
    for x in 1...num {
        if factorial != 0 {
            factorial = factorial * x
        } else {
            factorial = 1
        }
    }
    
    return factorial
}

factorialFirst(num: 7)


func factorial(num: Int)  -> Int{
    if num == 1 {
        return 1
    } else {
        return num * factorial(num: num - 1)
    }
}

factorial(num: 7)










