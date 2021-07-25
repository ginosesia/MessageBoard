//
//  Extentions.swift
//  MessageBoard
//
//  Created by Gino Sesia on 24/07/2021.
//

import SwiftUI

extension String {
    func loadImage() -> UIImage {
        
        do {
            guard let url = URL(string: self) else {
                return UIImage()
            }
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data) ?? UIImage()
            
        } catch {
            
        }
        return UIImage()
    }
}


struct titleText: ViewModifier {
    func body(content: Content) -> some View {
       content
        .font(.system(size: 25, weight: .bold, design: .rounded))
        .padding(.top, 15)
        .padding(.bottom, 5)
        .foregroundColor(.purple)
    }
}

struct title2Text: ViewModifier {
    func body(content: Content) -> some View {
       content
        .font(.system(size: 10, weight: .bold, design: .rounded)).foregroundColor(.blue)
    }
}

struct title3Text: ViewModifier {
    func body(content: Content) -> some View {
       content
        .font(.system(size: 16, weight: .bold, design: .rounded)).padding(.bottom, 4)
    }
}

func getUrl(user: User) -> String {
    return "https://i.pravatar.cc/150?u=\(user.email)"
}
