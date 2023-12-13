//
//  ServiceTabItem.swift
//  Rexix
//
//  Created by Apple on 12/12/2023.
//

import SwiftUI

struct Service: Identifiable{
    var id = UUID()
    var imageName: String = "Person2"
    var name: String = "Apple Tv+"
    var rating: Double = 3.9
}
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct ServiceTabItem: View {
    let service: Service

    var body: some View {
        VStack(alignment: .leading) {
            Image(service.imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .clipped()
                .clipShape(RoundedCorner(radius: 10, corners: [.topLeft, .topRight])).padding([.leading, .trailing, .top], -10)

            VStack(alignment: .leading, spacing: 8) {
                Text(service.name)
                    .font(.headline)
                    .padding([.leading, .trailing], 8)
                    .fixedSize(horizontal: false, vertical: true) // Allow the name to wrap to the next line if needed

                Text(String(format: "Rating: %.1f", service.rating))
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding([.leading, .trailing, .bottom], 8)
                    .fixedSize(horizontal: false, vertical: true) // Allow the rating to wrap to the next line if needed
            }
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .frame(maxWidth: .infinity) // Set the maximum width
    }
}


struct ServicesTabItem_Previews: PreviewProvider {
    static var previews: some View {
        ServiceTabItem(service: Service(imageName: "yourImageName", name: "Your Category", rating: 4.5))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
