//
//  HomeView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 14/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    StoriesView()
                    PostView(imageProfile: "profile", username: "John Doe", content: "profile", likes: 105, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", time: 34)
                    PostView(imageProfile: "profile2", username: "Albert Cook", content: "profile2", likes: 3002, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", time: 55)

                }
                
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
