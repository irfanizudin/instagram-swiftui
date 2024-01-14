//
//  HeaderView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 14/10/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            HStack(spacing: 20) {
                Image("heart")
                Image("messenger")
            }
        }
        .padding(.vertical, 3)
        .padding(.horizontal, 15)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
