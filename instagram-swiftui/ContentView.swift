//
//  ContentView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 14/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            Image("search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Image("reels")
                .tabItem {
                    Image(systemName: "play.square")
                }
            Image("shop")
                .tabItem {
                    Image(systemName: "cart")
                }
            Image(systemName: "person.circle.fill")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
