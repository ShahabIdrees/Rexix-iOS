//
//  UserPostsComponent.swift
//  Rexix
//
//  Created by Apple on 07/12/2023.
//

import SwiftUI


struct UserPost: Identifiable {
    let id = UUID()
    let imageName: String
    let caption: String
}

struct ProfilePostsView: View {
    let reviewPosts: [Review] // Assuming you have an array of user posts

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                ForEach(reviewPosts) { post in
                    ReviewItem(review: post)
                }
            }
            .padding()
        }
        .navigationTitle("Posts") // Optionally set a navigation title
    }
}

struct PostCardView: View {
    let post: Review

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(post.title)
                .font(.body)
                .foregroundColor(.primary)
            Image(post.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .clipped()

        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct ProfilePostsView_Previews: PreviewProvider {
    static var previews: some View {
        let samplePosts: [Review] = [
            Review(title: "Exploring new places! 🏞️", image: "CoverPhoto"),
            Review(title: "Awesome day at the beach! 🌊☀️", image: "CoverPhoto"),
            Review(title: "Delicious food adventures! 🍔🍕", image: "CoverPhoto"),
        ]

        NavigationView {
            ProfilePostsView(reviewPosts: samplePosts)
        }
    }
}
