//
//  ReviewsTab.swift
//  Rexix
//
//  Created by Apple on 12/12/2023.
//

import SwiftUI

struct ReviewsTab: View {
    let reviews: [Review] = [
        Review(
            title: "Great Product!",
            description: "I really loved this product. It exceeded my expectations.",
            rating: 4.5,
            productId: "123",
            image: "CoverPhoto", userId: "john_doe",
            replies: []
        ),
        Review(
            title: "Great Product!",
            description: "I really loved this product. It exceeded my expectations.",
            rating: 4.5,
            productId: "123",
            image: "CoverPhoto", userId: "john_doe",
            replies: []
        ),
        Review(
            title: "Great Product!",
            description: "I really loved this product. It exceeded my expectations.",
            rating: 4.5,
            productId: "123",
            image: "CoverPhoto", userId: "john_doe",
            replies: []
        )
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(reviews) { review in
                    ReviewTabItem(review: review)
                }
            }
            .padding()
        }
    }
}

struct ReviewsTab_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsTab()
    }
}
