//
//  HomeView.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                SearchView()
                ScrollView(.vertical, showsIndicators: false) {
                    LinkedinStory()
                   
                    
                    ForEach(getUserPost()) { post in
                        PostView(postImageName: post.imageName)
                    }.padding(.top)
                    Spacer(minLength: 70)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
