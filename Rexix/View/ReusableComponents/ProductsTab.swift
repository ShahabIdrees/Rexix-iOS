import SwiftUI



struct ProductsTab: View {
    let products: [Product] = [
        Product(name: "Macbook Pro 16\"", imageName: "CoverPhoto", rating: 4.2),
        Product(name: "Macbook Air 15\"", imageName: "CoverPhoto", rating: 3.8),
        Product(name: "Macbook Pro 14\"", imageName: "CoverPhoto", rating: 4.2),
        Product(name: "Macbook Air 13\" M2", imageName: "CoverPhoto", rating: 3.8),
        Product(name: "Macbook Air 13\" M1", imageName: "CoverPhoto", rating: 4.2),
        Product(name: "Macbook Pro 13\"", imageName: "CoverPhoto", rating: 3.8),
        Product(name: "Mac Mini", imageName: "CoverPhoto", rating: 4.2),
        Product(name: "iPhone 15 Pro Max", imageName: "CoverPhoto", rating: 3.8),
    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(products) { product in
                    ProductTabItem(product: product).padding(.horizontal, 5)
                }
            }
            .padding(.vertical, 10)
        }
    }
}

struct ProductsTab_Previews: PreviewProvider {
    static var previews: some View {
        let sampleProducts: [Product] = [
            Product(name: "Product 1", imageName: "CoverPhoto", rating: 4.2),
            Product(name: "Product 2", imageName: "CoverPhoto", rating: 3.8),
            // Add more sample products as needed
        ]

        return ProductsTab()
    }
}
