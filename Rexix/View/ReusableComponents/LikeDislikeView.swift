//
//  LikeDislikeView.swift
//  Rexix
//
//  Created by Apple on 15/11/2023.
//

import SwiftUI

struct LikeDislikeView: View {
    @State private var isLiked = false
    @State private var isDisliked = false

    var body: some View {
        VStack(spacing: 0){
            
            Divider()
            HStack(spacing: 50) {
                Button(action: {
                    isLiked.toggle()

                }) {
                    Image(systemName: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                        .foregroundColor(isLiked ? .blue : .gray)
                    Text("\(68)")
                        .foregroundColor(.gray)
                }

                Button(action: {
                    isDisliked.toggle()
                    isLiked.toggle()
                }) {
                    Image(systemName: isDisliked ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                        .foregroundColor(isDisliked ? .red : .gray)
                    Text("\(79)")
                        .foregroundColor(.gray)
                }

                Button(action: {
                    // Handle replies action
                }) {
                    Image(systemName: "arrowshape.turn.up.right")
                        .foregroundColor(.gray)
                    Text("\(89)")
                        .foregroundColor(.gray)
                }

                Button(action: {
                    // Handle share action
                }) {
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.gray)
                }
            }
            .font(.body)
            .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
            //Divider().background(Color.secondary)
        }
    }
}

struct LikeDislikeView_Previews: PreviewProvider {
    static var previews: some View {
        LikeDislikeView()
    }
}
