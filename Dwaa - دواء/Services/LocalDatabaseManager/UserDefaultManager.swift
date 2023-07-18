//
//  UserDefaultManager.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 18/07/2023.
//

import Foundation

class UserDefaultManager{
    static let shared = UserDefaultManager()
    
    let userDefault = UserDefaults.standard
    
    func saveUserLocally(_ user: User){
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(user){
            userDefault.set(data, forKey: KCurrentUser)
        }
    }
}
