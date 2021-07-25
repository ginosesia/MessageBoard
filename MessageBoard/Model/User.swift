//
//  User.swift
//  MessageBoard
//
//  Created by Gino Sesia on 23/07/2021.
//

import Foundation

struct User : Codable, Identifiable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Address
    var phone: String
    var website: String
    var company: Company
}

class userApi {
    func getUsers(completion: @escaping ([User]) -> ()) {
        guard let url = URL(string: usersJson) else {
            print("Invalid Url")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode([User].self, from: data) {
                    DispatchQueue.main.async {
                        completion(response)
                    }
                return
                }
            }
        }
        .resume()
    }
}
