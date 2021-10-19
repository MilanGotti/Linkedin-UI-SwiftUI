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
            BottomSheetView(isOpen: $isOpenMenu, maxHeight: 700) {
                
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
