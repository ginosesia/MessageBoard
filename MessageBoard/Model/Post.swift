//
//  Post.swift
//  MessageBoard
//
//  Created by Gino Sesia on 23/07/2021.
//

import Foundation

struct Post: Codable, Identifiable {
    var id: Int
    var userId: Int
    var title: String
    var body:  String
}

class postApi {
    func getPosts(completion: @escaping ([Post]) -> ()) {
        guard let url = URL(string: postsJson) else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode([Post].self, from: data) {
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
