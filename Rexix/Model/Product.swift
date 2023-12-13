//
//  Product.swift
//  Rexix
//
//  Created by Apple on 06/11/2023.
//

import Foundation

struct Product: Hashable, Identifiable{
    var id = UUID()
    var name: String = ""
    var description: String = ""
    var reviews: [Review] = []
    var imageName: String = "CoverPhoto"
    var rating: Double = 0.0
    var brand: String = ""
}
