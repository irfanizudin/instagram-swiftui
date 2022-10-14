//
//  StoryView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 14/10/22.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        Image("profile")
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
            .cornerRadius(50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
            .previewLayout(.sizeThatFits)
    }
}
