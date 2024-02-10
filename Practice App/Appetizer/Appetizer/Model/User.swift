//
//  User.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 4/2/24.
//

import Foundation

struct User : Codable{
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var date: Date = Date.now
    var extraNapkin: Bool = false
    var frequentRefill: Bool = false
}
