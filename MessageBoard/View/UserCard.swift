//
//  UserCard.swift
//  MessageBoard
//
//  Created by Gino Sesia on 23/07/2021.
//

import SwiftUI

struct UserCard: View {
    
    //MARK: - PROPERTIES
    var user: User
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            HStack {
                NavigationLink(destination: UserDetailView(user: user)) {
                    Image(systemName: "person")
                        .font(.system(size: 30))
                        .padding()
                    Text(user.username)
                        .padding(.leading, -15)
                        .frame(alignment: .leading)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                }
                Spacer()
            }.padding(.leading, 20)
            .padding(.trailing, 20)
        }//: NavigationLink
        .padding()
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

////MARK: - PREVIEW
//struct UserCard_Previews: PreviewProvider {
//    static var previews: some View {
//        UserCard().previewLayout(.sizeThatFits)
//    }
//}
