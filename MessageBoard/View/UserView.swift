//
//  UserProfileCard.swift
//  MessageBoard
//
//  Created by Gino Sesia on 23/07/2021.
//

import SwiftUI

struct UserView: View {
    
    //MARK: - PROPERTIES
    @State var users: [User] = []
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List(users, id: \.id) { user in
                UserCard(user: user)
            }
            .onAppear {
                userApi().getUsers { (users) in
                    self.users = users
                }
            }.navigationTitle("Users")
        }//: NavigationView
    }
}

//MARK: - PREVIEW
struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
