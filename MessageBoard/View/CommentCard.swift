//
//  CommentCard.swift
//  MessageBoard
//
//  Created by Gino Sesia on 24/07/2021.
//

import SwiftUI

struct CommentCard: View {
    
    //MARK: - PROPERTIES
    var comment: Comment
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(comment.name)
                        .foregroundColor(.white)
                        .font(.system(size: 22, weight: .medium, design: .rounded))
                    Text(comment.email)
                        .foregroundColor(.red)
                        .font(.system(size: 15, weight: .light, design: .rounded))
                        .padding(.bottom, 6)
                    Text(comment.body)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .light, design: .rounded))
                }.padding()
                Spacer()
            }
        }//: VStack
        .ignoresSafeArea(.all)
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
    }
}
