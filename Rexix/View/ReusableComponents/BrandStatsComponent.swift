//
//  BrandStatsComponent.swift
//  Rexix
//
//  Created by Apple on 13/12/2023.
//

import SwiftUI

struct BrandStatsComponent: View {
    var customerCount: Int
    var reviewCount: Int
    var rating: Double

    var body: some View {
        HStack(spacing: 16) {
            Spacer()
            VStack(alignment: .center, spacing: 4) {
                Text("\(customerCount)")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Customers")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .center, spacing: 4) {
                Text("\(reviewCount)")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Reviews")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .center, spacing: 4) {
                Text(String(format: "%.1f", rating))
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(getRatingColor(Rating: rating))
                Text("Rating")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }

    private func getRatingColor(Rating: Double) -> Color {
        if rating < 3 {
            return .red
        } else if rating >= 3 && rating <= 4 {
            return .yellow
        } else {
            return .green
        }
    }
}

struct BrandStatsComponent_Preview: PreviewProvider {
    static var previews: some View {
        BrandStatsComponent(customerCount: 99404904, reviewCount: 2230442, rating: 4.9)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
