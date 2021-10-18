//
//  LinkedinStory.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//

import SwiftUI

struct LinkedinStory: View {
    
    var body: some View {
        ScrollView([.horizontal], showsIndicators: false) {
            HStack() {
                VStack {
                    ZStack(alignment: .center) {
                        Image("profile")
                            .resizable()
                            .scaledToFill() 
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                            .padding(.top, 10)
                        
                        Image("Add")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .offset(x: 33, y: 23)
                    }
                    
                    Text("Your Story")
                        .font(Font.custom("Avenir-Bold", size: 14))
                       
                }
                
                ForEach(getUserStory()) { story in
                    StoryProvider(imageName: story.imageName, personName: story.personName)
                }
            }
        }.padding([.leading, .top], 8)
    }
}


struct LinkedinStory_Previews: PreviewProvider {
    static var previews: some View {
        LinkedinStory()
    }
}
