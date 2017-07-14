//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var firstName = "Sattar"
var lastName = "Hummatli"

var age = 30
var fullName = firstName + " " + lastName
var fullName2 = "\(firstName) \(lastName) is \(age)"

var bookTitle = "four hour a work week"

bookTitle.capitalized

var chatRoomAnnoyingGuys = "PLEASE HELP ME NOW!"

chatRoomAnnoyingGuys.lowercased()

var sentence = "What the fetch?! Heck that is crazy!"

if sentence.contains("fetch") || sentence.contains("Heck") {
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}