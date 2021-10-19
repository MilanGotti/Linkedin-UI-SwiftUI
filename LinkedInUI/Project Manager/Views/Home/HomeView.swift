//
//  HomeView.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//
import Combine
import SwiftUI

struct HomeView: View {
    
    @Binding var isOpenMenu: Bool
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 0) {
                SearchView()
                    .background(Color.white)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        LinkedinStory()
                            .background(Color.white)
                        ForEach(getUserPost()) { post in
                            PostView(postImageName: post.imageName, buttonAction: {
                                self.isOpenMenu = !self.isOpenMenu
                            })
                                .padding(.bottom, 10)
                        }
                    }
                }
            }.background(Color.black.opacity(0.1))
        }
    }
}

/*struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}*/
