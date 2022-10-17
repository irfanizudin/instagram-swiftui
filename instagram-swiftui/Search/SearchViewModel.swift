//
//  SearchViewModel.swift
//  instagram-swiftui
//
//  Created by Irfan Izudin on 18/10/22.
//

import Foundation
import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var searchText: String = ""
}
