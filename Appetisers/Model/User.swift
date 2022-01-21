//
//  User.swift
//  Appetisers
//
//  Created by Duncan Kent on 21/01/2022.
//

import Foundation

struct User: Codable {
    var firstName           = ""
    var lastName            = ""
    var email               = ""
    var birthDate           = Date()
    var extraNapkins        = false
    var unlimitedRefills    = false
}
