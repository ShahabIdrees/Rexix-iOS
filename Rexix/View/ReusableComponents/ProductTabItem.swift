//
//  ProductTabItem.swift
//  Rexix
//
//  Created by Apple on 12/12/2023.
//

import SwiftUI

struct ProductTabItem: View {
    var product: Product // Assuming you have a Product model

    var body: some View {
        HStack(spacing: 10) {
            // Small Image
            Image(product.imageName) // Replace with the actual image name
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipped()
                //.cornerRadius(10)

            // Product Details
            VStack(alignment: .leading, spacing: 5) {
                // Product Name
                Text(product.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                // Product Category
                Text("Product.Category")
                    .font(.subheadline)
                    .foregroundColor(.primary)

                // Product Rating
                HStack {
                    Text("Rating:")
                        .font(.caption)
                        .foregroundColor(.primary)

                    Text(String(format: "%.1f", product.rating))
                        .font(.caption)
                        .foregroundColor(.green)
                }
            }

            Spacer()
        }
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.secondary.opacity(0.4), radius: 5, x: 0, y: 2)
    }
}

struct ProductTabItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductTabItem(product: Product())
    }
}
