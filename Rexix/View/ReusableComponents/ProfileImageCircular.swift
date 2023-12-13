//
//  ProfileImageCircular.swift
//  Rexix
//
//  Created by Apple on 07/12/2023.
//

import SwiftUI

struct ProfileImageCircular: View {
    var body: some View {
        Image("Person3") // Replace with your circular profile image
                 .resizable()
                 .aspectRatio(contentMode: .fill)
                 .frame(width: 200, height: 200)
                 .clipShape(Circle())
                 .overlay(
                     Circle()
                         .stroke(Color.white, lineWidth: 5)
                         .shadow(radius: 10)
                 )
                 .overlay(
                     Circle()
                         .stroke(Color.gray, lineWidth: 2)
                 )
    }
}

struct ProfileImageCircular_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageCircular()
    }
}
