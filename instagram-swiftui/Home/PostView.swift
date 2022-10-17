//
//  PostView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 15/10/22.
//

import SwiftUI

struct PostView: View {
    @State var comment: String = ""
    var imageProfile: String
    var username: String
    var content: String
    var likes: Int
    var caption: String
    var time: Int
    
    var body: some View {
        VStack(spacing: 0) {
            //header
            HStack {
                HStack(spacing: 9) {
                    Image(imageProfile)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .cornerRadius(50)
                    Text(username)
                        .font(.headline)
                }
                Spacer()
                Image("more")
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 12)
            
            //content
            Image(content)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
            
            //action
            HStack {
                HStack(spacing: 14) {
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                Spacer()
                Image("bookmark")
            }
            .padding(.vertical, 9)
            .padding(.horizontal, 12)
            
            //detail
            VStack(spacing: 5) {
                HStack {
                    Text("\(likes) Likes")
                        .font(.headline)
                    Spacer()
                }
                
                Text("John Doe ").bold() + Text(caption)

            }
            .padding(.horizontal, 12)

            //comment
            HStack {
                TextField("Add comment...", text: $comment)
                Spacer()
                Text("😍 😭")
                Image(systemName: "plus.circle")
                    .foregroundColor(.secondary)
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 12)
            
            //time
            HStack {
                Text("\(time) minutes ago")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding(.horizontal, 12)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(imageProfile: "profile", username: "John Doe", content: "profile", likes: 103, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", time: 18)
    }
}
