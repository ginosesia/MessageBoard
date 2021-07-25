//
//  PostCard.swift
//  MessageBoard
//
//  Created by Gino Sesia on 24/07/2021.
//

import SwiftUI

struct PostCard: View {
    
    //MARK: - PROPERTIES
    var post: Post
    @State var comments: [Comment] = []
    
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(post.title)
                        .foregroundColor(.white)
                        .font(.system(size: 22, weight: .medium, design: .rounded))
                    ForEach(comments) { comment in
                        if comment.postId == post.id {
                            
                        }
                    }
                    Text("5 comments")
                        .foregroundColor(.pink)
                        .font(.system(size: 16, weight: .light, design: .rounded))
                }.padding()
                Spacer()
            }
        }//: VStack
        .onAppear {
            commentApi().getComments { (comments) in
                self.comments = comments
            }
        }
        .background(
            LinearGradient(gradient: Gradient(
                colors: [
                    Color.purple, Color.blue
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 0)
        .cornerRadius(15)
    }//: Body
}
