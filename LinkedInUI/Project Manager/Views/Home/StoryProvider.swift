//
//  StoryProvider.swift
//  LinkedInUI
//
//  Created by Milan Goti on 17/10/21.
//

import SwiftUI

struct StoryProvider: View {
    
    var imageName : String
    var personName : String
    
    var body: some View {
        VStack {
            ZStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
                Circle()
                    .stroke(Color.blue, lineWidth: 5)
                    .frame(width: 80, height: 80)
                    .cornerRadius(40)
            }
            Text(personName)
                .font(Font.custom("Avenir-Bold", size: 14))
        }
    }
}


struct StoryModel: Identifiable {
    var id = UUID()
    var imageName : String
    var personName : String
}

func getUserStory() -> [StoryModel] {
    return [StoryModel(imageName: "linkedin-circle", personName: "Linkedin"),
            StoryModel(imageName: "image2", personName: "Emma Tem"),
            StoryModel(imageName: "image3", personName: "Sophia Kim"),
            StoryModel(imageName: "image4", personName: "Amelia Dev"),
            StoryModel(imageName: "image5", personName: "Mia Jones"),]
}

func getUserPost() -> [StoryModel] {
    return [StoryModel(imageName: "post1", personName: "Linkedin"),
            StoryModel(imageName: "post2", personName: "Emma Tem"),
            StoryModel(imageName: "post3", personName: "Sophia Kim"),
            StoryModel(imageName: "post4", personName: "Amelia Dev"),
    ]
}
