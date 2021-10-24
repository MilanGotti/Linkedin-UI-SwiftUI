//
//  ContentView.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//

import Combine
import SwiftUI

struct ContentView: View {
    
    @State var isOpenMenu = false
    @State var optionsList = [Options(title: "Save", detail: "", image: "bookmark"),
                              Options(title: "Share via", detail: "", image: "square.and.arrow.up"),
                              Options(title: "Unfollow Milan Goti", detail: "Stay connected but stop seeing posts from Milan in feed", image: "xmark.circle.fill"),
                              Options(title: "Remove connection with Milan Goti", detail: "Milan won't be notified", image: "person.fill.xmark"),
                              Options(title: "Mute Milan Goti", detail: "Stop seeing post from Milan in feed", image: "speaker.slash.fill"),
                              Options(title: "I don't want to see this", detail: "Let us know why you don't want to see this post", image: "eye.slash.fill"),
                              Options(title: "Report this post", detail: "This post is offensive or the account is hacked", image: "flag.fill"),
                              Options(title: "Who can see this post?", detail: "Visible to anyone on or off Linkedin", image: "eye.fill")]
    
    var body: some View {
        ZStack {
            TabView {
                HomeView(isOpenMenu: $isOpenMenu)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                NetworkView()
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("My Network")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "plus.square.fill")
                        Text("Post")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "bell.fill")
                        Text("Notifications")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "bag.fill")
                        Text("Jobs")
                    }
            }
            .accentColor(.black)
            BottomSheetView(isOpen: $isOpenMenu, maxHeight: 600) {
                List(self.optionsList, id: \.id) { option in
                    OptionsView(option: option)
                        .listRowBackground(Color(.secondarySystemBackground))
                }
                .listStyle(.plain)
                .onAppear {
                    UITableView.appearance().isScrollEnabled = false
                    UITableView.appearance().separatorColor = .clear
                }
                
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Options: Identifiable {
    var id = UUID()
    var title:String
    var detail: String
    var image: String
}

struct OptionsView: View {
    var option: Options
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            Image(systemName: self.option.image)
                .resizable()
                .foregroundColor(.black.opacity(0.7))
                .frame(width: 22, height: 22)
            VStack(alignment: .leading, spacing: 5) {
                Text(self.option.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black.opacity(0.7))
                if self.option.detail != "" {
                    Text(self.option.detail)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.black.opacity(0.4))
                }
            }
        }
        .padding(.vertical, 5)
    }
}
