//
//  ContentView.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("")
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
