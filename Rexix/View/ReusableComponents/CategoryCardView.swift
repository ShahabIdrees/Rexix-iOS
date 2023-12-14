//
//  CategoryCardView.swift
//  Rexix
//
//  Created by Apple on 11/12/2023.
//

import SwiftUI

struct CategoryCardView: View {
    var category: String

    var body: some View {
        VStack(alignment: .center, spacing: 15) { // Center alignment
            Image(systemName: "bolt.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 80) // Adjusted height
                .foregroundColor(.orange)
                .padding(.top, 10)

            Text(category)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.primary)
                .padding(.bottom, 10)
        }
        .padding(.horizontal, 20) // Increased overall horizontal padding
        .frame(maxWidth: 130, minHeight: 170)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.secondary.opacity(0.4), radius: 5, x: 0, y: 2)
    }
}


struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(category: "Yeah buddyyyyyy")
    }
}
