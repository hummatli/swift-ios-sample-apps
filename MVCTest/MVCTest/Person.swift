//
//  Person.swift
//  MVCTest
//
//  Created by Settar Hummetli on 7/16/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String{
        get {
            return _firstName
        } set {
            _firstName = newValue
        }
    }
    
    var lastName: String {
        return _lastName
    }
    
    var fullName: String {
        return "\(_firstName!) \(_lastName!)"
    }
    
    init(first: String, last: String) {
        _firstName = first
        _lastName = last
    }
}
