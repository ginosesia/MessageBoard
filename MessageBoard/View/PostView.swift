//
//  ContentView.swift
//  MessageBoard
//
//  Created by Gino Sesia on 23/07/2021.
//

import SwiftUI

struct PostView: View {
    
    //MARK: - PROPERTIES
    @State var posts: [Post] = []
    @State var comments: [Comment] = []
    @State var userId: Int
    
    //MARK: - BODY
    var body: some View {
        List {
            ForEach(posts) { post in
                if post.userId == userId {
                    PostCard(post: post, comments: comments)
                }
            }
        }.onAppear {
            postApi().getPosts { (posts) in
                self.posts = posts
            }
        }.navigationTitle("Posts")
    }//: Body
}
