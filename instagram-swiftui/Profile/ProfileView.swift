//
//  ProfileView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 13/01/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedPostTab: Int = 0
    let gridLayout: [GridItem] = [
        GridItem(.flexible(minimum: 10, maximum: UIScreen.main.bounds.width/3), spacing: 5),
        GridItem(.flexible(minimum: 10, maximum: UIScreen.main.bounds.width/3), spacing: 5),
        GridItem(.flexible(minimum: 10, maximum: UIScreen.main.bounds.width/3), spacing: 5),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    navbar
                    profileInfo
                    profileHighlight
                    posts
                }
            }
        }
    }
    
    var navbar: some View {
        HStack {
            Text("ryan.renolds")
                .font(.title2.bold())
            Spacer()
            HStack(spacing: 10) {
                Image("plus")
                Image("burger")
            }
        }
        .padding(.horizontal, 16)
    }
    
    var profileInfo: some View {
        VStack {
            VStack {
                HStack {
                    Image("profile2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .cornerRadius(50)
                    Spacer()
                    HStack(spacing: 16) {
                        VStack(spacing: 6) {
                            Text("16")
                                .font(.callout.bold())
                            Text("Posts")
                                .font(.callout)
                        }
                        VStack(spacing: 6) {
                            Text("165")
                                .font(.callout.bold())
                            Text("Followers")
                                .font(.callout)
                        }
                        VStack(spacing: 6) {
                            Text("1667")
                                .font(.callout.bold())
                            Text("Following")
                                .font(.callout)
                        }
                    }
                    .padding(.horizontal, 8)
                }
            }
            .padding(.horizontal, 16)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Ryan Renolds")
                    .font(.callout.bold())
                Text("Hi, I'm iOS Developer")
                    .font(.callout)
                HStack(spacing: 2) {
                    Image(systemName: "link")
                        .font(.subheadline)
                    Text("codewithryan.com")
                        .font(.subheadline)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            
            HStack(spacing: 10) {
                Button {
                    
                } label: {
                    Text("Edit profile")
                        .font(.callout.bold())
                        .frame(height: 46)
                        .frame(maxWidth: .infinity)
                        .background(Color.instagramGray)
                        .cornerRadius(8)
                }
                Button {
                    
                } label: {
                    Text("Share profile")
                        .font(.callout.bold())
                        .frame(height: 46)
                        .frame(maxWidth: .infinity)
                        .background(Color.instagramGray)
                        .cornerRadius(8)
                }

            }
            .padding(.horizontal, 16)

        }
    }
    
    var profileHighlight: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 10) {
                ForEach(0..<5) { _ in
                    StoryView(imageProfile: "profile", username: "academy")
                }
            }
            .padding(16)
        }
    }
    
    var posts: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    Image("grid")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(selectedPostTab == 0 ? Color.black : Color.instagramGrayIcon)
                        .scaledToFit()
                        .frame(width: 26)
                        .frame(height: 46)
                    Rectangle()
                        .fill(selectedPostTab == 0 ? Color.black : Color.white)
                        .frame(height: 2)
                }
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selectedPostTab = 0
                    }
                }
                
                VStack(spacing: 0) {
                    Image("reels")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(selectedPostTab == 1 ? Color.black : Color.instagramGrayIcon)
                        .scaledToFit()
                        .frame(width: 26)
                        .frame(height: 46)
                    Rectangle()
                        .fill(selectedPostTab == 1 ? Color.black : Color.white)
                        .frame(height: 2)
                }
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selectedPostTab = 1
                    }
                }
                
                VStack(spacing: 0) {
                    Image("mentions")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(selectedPostTab == 2 ? Color.black : Color.instagramGrayIcon)
                        .scaledToFit()
                        .frame(width: 26)
                        .frame(height: 46)
                    Rectangle()
                        .fill(selectedPostTab == 2 ? Color.black : Color.white)
                        .frame(height: 2)
                }
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selectedPostTab = 2
                    }
                }
            }
            
            if selectedPostTab == 0 {
                LazyVGrid(columns: gridLayout, spacing: 2) {
                    ForEach(0..<15) { _ in
                        if let url = URL(string: "https://source.unsplash.com/collection/1163637/45") {
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/3)
                                    .clipped()
                            } placeholder: {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.instagramGray)
                                        .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/3)
                                    ProgressView()
                                    
                                }
                            }
                        }
                    }
                    
                }
                
            } else if selectedPostTab == 1 {
                LazyVGrid(columns: gridLayout, spacing: 2) {
                    ForEach(0..<10) { _ in
                        if let url = URL(string: "https://source.unsplash.com/collection/1163637/45") {
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width/3, height: 250)
                                    .clipped()
                            } placeholder: {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.instagramGray)
                                        .frame(width: UIScreen.main.bounds.width/3, height: 250)
                                    ProgressView()
                                    
                                }
                            }
                        }
                    }
                    
                }
                
            } else if selectedPostTab == 2 {
                Text("No photos yet")
                    .font(.headline)
                    .foregroundColor(Color.instagramGrayIcon)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            
        }
    }
}

#Preview {
    ProfileView()
}
