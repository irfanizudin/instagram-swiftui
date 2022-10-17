//
//  SearchView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 17/10/22.
//

import SwiftUI

struct SearchView: View {
    @StateObject var vmSearchView = SearchViewModel()
    
    var body: some View {
        VStack {
            SearchBarView(searchText: $vmSearchView.searchText)
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
