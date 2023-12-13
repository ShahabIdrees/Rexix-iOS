//
//  Review.swift
//  Rexix
//
//  Created by Apple on 07/11/2023.
//

import Foundation

struct Review: Hashable, Identifiable{
    static func == (lhs: Review, rhs: Review) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    let id = UUID()
    var title: String = ""
    var description: String = ""
    var rating: Double = 0.0
    var productId: String = ""
    var profile: String = "ProfilePlaceHolder"
    var image: String = "CoverPhoto"
    var userId: String = ""
    var replies: [Reply] = []
}
