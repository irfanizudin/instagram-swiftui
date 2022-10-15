//
//  StoriesView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 14/10/22.
//

import SwiftUI

struct StoriesView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(spacing: 0) {
                HStack(spacing: 10) {
                    StoryView(imageProfile: "profile", username: "Ari Lesmana")
                    StoryView(imageProfile: "profile2", username: "Ari Sodikin")
                    StoryView(imageProfile: "profile3", username: "Jane Clay")
                    StoryView(imageProfile: "profile4", username: "Cristie Wang")
                    StoryView(imageProfile: "profile5", username: "Budi Solihun")
                    StoryView(imageProfile: "profile6", username: "Indri Wiwin")
                    StoryView(imageProfile: "profile7", username: "Rohana Rai")
                    StoryView(imageProfile: "profile8", username: "Jessica Oi")
                    }
                .padding(.vertical, 10)
                .padding(.top, 8)
                .padding(.horizontal, 8)
                Divider()
            }
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
