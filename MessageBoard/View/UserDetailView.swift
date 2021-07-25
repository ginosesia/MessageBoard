//
//  UserDetailView.swift
//  MessageBoard
//
//  Created by Gino Sesia on 24/07/2021.
//

import SwiftUI

struct UserDetailView: View {
    
    var user: User
    
    var body: some View {
            ScrollView {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Personal Details").modifier(titleText())
                        HStack {
                            Group {
                                VStack(alignment: .leading) {
                                    Text("Name:").modifier(title2Text())
                                    Text(user.name).modifier(title3Text())
                                    Text("Email:").modifier(title2Text())
                                    Text(user.email).modifier(title3Text())
                                    Text("Phone:").modifier(title2Text())
                                    Text(user.phone).modifier(title3Text())
                                    Text("Website:").modifier(title2Text())
                                    Text(user.website).modifier(title3Text())
                                }
                            }
                            Spacer()
                            Image(uiImage: getUrl(user: user).loadImage())
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 100, height: 100, alignment: .leading)
                                .padding(.leading, -15)
                        }
                        Group {
                            Text("Address").modifier(titleText())
                            Text("Street:").modifier(title2Text())
                            Text(user.address.street).modifier(title3Text())
                            Text("Suite:").modifier(title2Text())
                            Text(user.address.suite).modifier(title3Text())
                            Text("City:").modifier(title2Text())
                            Text(user.address.city).modifier(title3Text())
                            Text("Zipcode:").modifier(title2Text())
                            Text(user.address.zipcode).modifier(title3Text())
                            Group {
                                Text("Geo Location").modifier(titleText())
                                Text("lattitude:").modifier(title2Text())
                                Text(user.address.geo.lat).modifier(title3Text())
                                Text("longitude:").modifier(title2Text())
                                Text(user.address.geo.lng).modifier(title3Text())
                            }
                        }
                        Group {
                            Text("Company").modifier(titleText())
                            Text("Name:").modifier(title2Text())
                            Text(user.company.name).modifier(title3Text())
                            Text("Catch Phrase:").modifier(title2Text())
                            Text(user.company.catchPhrase).modifier(title3Text())
                            Text("bs:").modifier(title2Text())
                            Text(user.company.bs).modifier(title3Text())
                        }
                    }
                    Spacer()
                }.padding()
            }
            Group {
                NavigationLink(destination: PostView(userId: user.id)) {
                    HStack {
                        ZStack {
                            Text("Posts").padding().foregroundColor(.white).modifier(titleText())
                        }
                        Spacer()
                        Image(systemName: "chevron.right").padding(.trailing, 15).foregroundColor(.white)
                    }.background(
                        LinearGradient(gradient: Gradient(
                            colors: [
                                Color.purple, Color.blue
                            ]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .cornerRadius(10)
                }.padding(.top, 20)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 0.0, y: 0.0)
            }.padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
        .navigationTitle(Text(user.username))
    }
}
