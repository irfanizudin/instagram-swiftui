//
//  StoryView.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 14/10/22.
//

import SwiftUI

struct StoryView: View {
    var imageProfile: String
    var username: String
    
    var body: some View {
        VStack(alignment: .center) {
            Image(imageProfile)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .cornerRadius(50)
                .overlay {
                    Circle()
                        .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
                        .frame(width: 70, height: 70)
            }
            Text(username)
                .font(.body)
                .lineLimit(1)
                .truncationMode(.tail)
                
        }
        .frame(width: 90)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(imageProfile: "profile", username: "John Doe")
            .previewLayout(.sizeThatFits)
    }
}
