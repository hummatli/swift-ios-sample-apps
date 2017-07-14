//: Playground - noun: a place where people can play

import UIKit

var length = 5
var width = 10

var rea = length * width

func calculateArea(length: Int, width: Int) -> Int {
    let result = length * width
    return result
}

func calculateArea2(length: Int, width: Int) -> Int {
    return length * width
    print("")
}


let area = calculateArea(length: 1, width: 2)


var bankAccountBallance = 500.00

func purchaseItem(currentBalance: inout Double, itemPrice: Double){
    if itemPrice <= currentBalance{
        currentBalance = currentBalance - itemPrice
        print("Purchaesd item for: $\(itemPrice)")
    } else {
        print("You have not enough money")
    }
}

let retroLunchBox = 40.00

purchaseItem(currentBalance: &bankAccountBallance, itemPrice: retroLunchBox)