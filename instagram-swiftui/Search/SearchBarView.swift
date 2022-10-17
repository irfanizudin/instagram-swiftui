//
//  SearchBarView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 18/10/22.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $searchText)
                .autocorrectionDisabled()
                .autocapitalization(.none)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.thinMaterial)
        )
        .padding(.horizontal, 12)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant(""))
    }
}
