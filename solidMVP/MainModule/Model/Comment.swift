//
//  Person.swift
//  solidMVP
//
//  Created by Pavel Koyushev on 13.10.2020.
//

import Foundation

struct Comment: Decodable {
    var postID: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
