//
//  LinkedInUIApp.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//

import SwiftUI

struct PostButtonProvider: View {
    
    var imageName: String
    var text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 17, height: 17)
                Text(text)
                    .font(Font.custom("Avenir-Bold", size: 14))
                    .padding(.leading, 0)
            }
        })
        .foregroundColor(Color.getPostButtonColor())
    }
}

struct PostLikeButton: View {
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action, label: {
            VStack {
                Image("like-button")
                    .resizable()
                    .frame(width: 17, height: 17)
                Text("Like")
                    .font(Font.custom("Avenir-Bold", size: 14))
                    .foregroundColor(Color.init(hex: "0178B3"))
                    .padding(.leading, 0)
            }
        })
        .foregroundColor(Color.getPostButtonColor())
    }
}

struct PosrCommentButton: View {
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action, label: {
            VStack {
                Image("comment")
                    .resizable()
                    .frame(width: 17, height: 17)
                Text("200")
                    .font(Font.custom("Avenir-Bold", size: 14))
                    .padding(.leading, 0)
            }
        })
        .foregroundColor(Color.getPostButtonColor())
    }
}
