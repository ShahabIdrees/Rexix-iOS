//
//  ReplyItem.swift
//  Rexix
//
//  Created by Apple on 14/11/2023.
//

import SwiftUI

struct ReplyItem: View {
    var item = Reply()

    init(review item: Reply = Reply()) {
        self.item = item
    }

    @State private var isLiked = false
    @State private var isDisliked = false

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            // Profile picture
            Image("ProfilePlaceHolder")
                .resizable()
                .frame(width: 30, height: 30)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.secondary, lineWidth: 0.1))
                .padding(.trailing, 10)

            VStack(alignment: .leading, spacing: 5) {
                // User name
                Text("Shahab Idrees")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                // Reply text
                Text("hahahahha too funny lol lmao hahahahha aaaajsnjsnf too funny lol lmao hahahahha too funny lol lmao hahahahha too funny lol lmao hahahahha too funny lol lmao")
                    .font(.body)
                    .foregroundColor(.primary)
                    .padding([.top, .bottom], 5)
                    .padding([.leading, .trailing], 10)
                    .background(Color(UIColor.systemBackground))
                    .cornerRadius(10)

                HStack(spacing: 24) {
                    // Like button
                    Button(action: {
                        isLiked.toggle()
                    }) {
                        Image(systemName: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                            .foregroundColor(isLiked ? .blue : .gray)
                        Text("\(68)")
                            .foregroundColor(.gray)
                    }
                    // Dislike button
                    Button(action: {
                        isDisliked.toggle()
                        isLiked.toggle()
                    }) {
                        Image(systemName: isDisliked ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                            .foregroundColor(isDisliked ? .red : .gray)
                        Text("\(79)")
                            .foregroundColor(.gray)
                    }

                    // Reply button
                    Button(action: {
                        // Handle reply action
                    }) {
                        Image(systemName: "arrowshape.turn.up.right.fill")
                            .foregroundColor(.gray)
                        Text("Reply")
                            .foregroundColor(.gray)
                    }
                }
                .font(.body)
            }

            // Add Spacer to fill available space
            Spacer()
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct ReplyItem_Previews: PreviewProvider {
    static var previews: some View {
        ReplyItem()
    }
}



