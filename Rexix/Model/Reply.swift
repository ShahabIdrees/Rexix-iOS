//
//  Reply.swift
//  Rexix
//
//  Created by Apple on 14/11/2023.
//
import Foundation

struct Reply: Hashable{
    static func == (lhs: Reply, rhs: Reply) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    var id: String = ""
    var description: String = ""
    var userId: String = ""
    var reviewId: String = ""
    var likes: Int = 0
    var dislikes: Int = 0
}
