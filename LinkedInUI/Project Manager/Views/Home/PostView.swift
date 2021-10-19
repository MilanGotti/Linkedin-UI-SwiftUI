//
//  PostView.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//

import SwiftUI

struct PostView: View {
    var postImageName: String
    var buttonAction: () -> () = {}
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading) {
                HStack {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Milan Goti")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        
                        Text("iOS Developr | SwiftUI | Swift | Flutter")
                            .font(.caption)
                            .foregroundColor(.black)
                        HStack {
                            Text("2d •")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            Image(systemName: "globe.americas.fill")
                                .foregroundColor(.black)
                                .offset(x: -5, y: 0)
                        }
                        
                    }
                    Spacer()
                    Button(action: {
                        self.buttonAction()
                    }, label: {
                        Image(systemName: "ellipsis")
                            .font(.headline)
                            .foregroundColor(Color.black)
                    })
                }
                Text("Happy Sunday 👋 guys! Today I've redesigned Linkedin for you in SwiftUI. You will find the Source code of this project on my GitHub, go to the below link and download it. https://lnkd.in/eX4jSVP")
                    .font(.subheadline)
                    .foregroundColor(Color.black)
                    .padding(.top)
            }
            .padding()
            Image(postImageName)
                .resizable()
                .scaledToFit()
            VStack {
                HStack(alignment: .center) {
                    HStack(alignment: .center, spacing: 5){
                        Image("like-button")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Image("heart")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("101")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    
                    Text("81 Comment")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                
                Divider()
                    .padding(.bottom, 10)
                    
                HStack {
                    PostLikeButton { }
                    Spacer()
                    
                    PosrCommentButton { }
                    Spacer()
                    
                    PostButtonProvider(imageName: "arrowshape.turn.up.right", text: "Share") {}
                    Spacer()
                    
                    PostButtonProvider(imageName: "paperplane", text: "Send") {}
                }
                
            }.padding()
            
            
            
        }
        .background(Color.white)
        //.cornerRadius(15)
        //.padding(.bottom)
        //.shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
        //.shadow(color: Color.white.opacity(0.9), radius: 10, x: 0, y: 0)
        
    }
}

/*struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}*/
