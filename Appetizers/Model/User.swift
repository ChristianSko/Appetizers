//
//  User.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 30/1/21.
//

import Foundation


struct User: Codable {
    var firstName       = ""
    var lasttName       = ""
    var email           = ""
    var birthday        = Date()
    var napkins         = false
    var frequentRefills = false
}
