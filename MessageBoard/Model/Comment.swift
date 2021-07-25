//
//  Comment.swift
//  MessageBoard
//
//  Created by Gino Sesia on 23/07/2021.
//

import Foundation

struct Comment: Codable, Identifiable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}

class commentApi {
    func getComments(completion: @escaping ([Comment]) -> ()) {
        guard let url = URL(string: commentsJson) else {
            print("Url Invalid")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode([Comment].self, from: data) {
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

