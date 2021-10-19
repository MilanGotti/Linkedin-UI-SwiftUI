//
//  NetworkView.swift
//  LinkedInUI
//
//  Created by Milan Goti on 18/10/21.
//

import SwiftUI

struct NetworkView: View {
    
    
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 0) {
                SearchView()
                    .background(Color.white)
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 0, maximum: .infinity)), GridItem(.flexible(minimum: 0, maximum: .infinity))], spacing: 20) {
                        ForEach((0...9999), id: \.self) { _ in
                            VStack{
                                
                            }
                            .cornerRadius(10)
                            .frame(height: 230)
                        }
                    }
                }
            }.background(Color.black.opacity(0.1))
            
        }
    }
}

struct NetworkView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkView()
    }
}
