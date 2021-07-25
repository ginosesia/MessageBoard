//
//  Address.swift
//  MessageBoard
//
//  Created by Gino Sesia on 23/07/2021.
//

import Foundation

struct Address : Codable {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: GeoLocation
}
