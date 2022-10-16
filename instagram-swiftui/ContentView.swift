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
                    Image("home")
                }
            Image("search")
                .tabItem {
                    Image("search")
                }
            Image("reels")
                .tabItem {
                    Image("reels")
                }
            Image("shop")
                .tabItem {
                    Image("shop")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
