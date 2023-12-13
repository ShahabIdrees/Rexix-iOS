//
//  FriendComponent.swift
//  Rexix
//
//  Created by Apple on 07/12/2023.
//

import SwiftUI

struct FriendComponent: View {
    var name: String
    var imageName: String = "ProfilePlaceHolder"

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 115, height: 115) // Set the specific width and height for the image
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 0.1))
                .cornerRadius(15)

            VStack(alignment: .leading, spacing: 10) {
                Text(name)
                    .font(.subheadline)
                    .foregroundColor(.primary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct FriendComponent_Previews: PreviewProvider {
    static var previews: some View {
        FriendComponent(name: "Shahab Idrees")
    }
}
