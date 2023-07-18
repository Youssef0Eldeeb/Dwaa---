//
//  User.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 18/07/2023.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable, Equatable{
    var id: String = ""
    var pushId: String = ""
    var imageLink: String = ""
    var username, email: String
}
