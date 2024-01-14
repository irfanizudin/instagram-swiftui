//
//  ContentView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 14/10/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vmSearchView = SearchViewModel()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Image("plus")
                .tabItem {
                    Image(systemName: "plus.app")
                }
            Image("reels")
                .tabItem {
                    Image(systemName: "play.square")
                }
            ProfileView()
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
