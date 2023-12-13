import SwiftUI



struct ProductsTab: View {
    let products: [Product] = [
        Product(name: "Macbook Pro 16\"", imageName: "15profront", rating: 4.2),
        Product(name: "Macbook Air 15\"", imageName: "15proback", rating: 3.8),
        Product(name: "Macbook Pro 14\"", imageName: "15proleft", rating: 4.2),
        Product(name: "Macbook Air 13\" M2", imageName: "15proright", rating: 3.8),
        Product(name: "Macbook Air 13\" M1", imageName: "15protop", rating: 4.2),
        Product(name: "Macbook Pro 13\"", imageName: "15probottom", rating: 3.8),
        Product(name: "Mac Mini", imageName: "15proangled", rating: 4.2),
        Product(name: "iPhone 15 Pro Max", imageName: "15proangled2", rating: 3.8),
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
