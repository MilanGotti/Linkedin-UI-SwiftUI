//
//  SearchView.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchTxtValue: String = ""
    
    var body: some View {
        
        HStack(alignment: .center,spacing: 10) {
            
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                TextField("Search", text: $searchTxtValue)
                Image(systemName: "qrcode.viewfinder")
                    .foregroundColor(.black)
            }
            .padding()
            .frame(height: 40)
            .background(Color.init(hex: "f5f5f5"))
            .cornerRadius(8)
            
            Button(action: {}, label: {
                Image("message")
                    .resizable()
                    .frame(width: 25, height: 22)
            })
        }
        .padding()
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
