import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Tab = .house

    let products: [Product] = [
        Product(
            name: "iPhone 15 pro",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            imageName: "CoverPhoto",
            rating: 4.9,
            brand: "Apple"),
        Product(
            name: "iPad pro",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            imageName: "CoverPhoto",
            rating: 4.9,
            brand: "Apple"),
        Product(
            name: "Macbook pro 16\"",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            imageName: "CoverPhoto",
            rating: 4.9,
            brand: "Apple"),
    ]

    var otherProducts: [Product] = [
        Product(
            name: "Apple watch ultra",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            imageName: "CoverPhoto",
            rating: 4.9,
            brand: "Apple"),
        Product(
            name: "Airpods Pro",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            imageName: "CoverPhoto",
            rating: 4.9,
            brand: "Apple"),
        // Add more products...
    ]

    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Top products")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding(.leading, 20) // Adjusted leading padding
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(products) { item in
                                ProductItemView(product: item)
                            }
                        }
                        .padding(.horizontal, 20) // Adjusted horizontal padding
                        .padding(.bottom, 30)
                        // Increased bottom padding
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Top Reviews")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding(.leading, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(products) { item in
                                ReviewItem( review: Review(title: "Delicious food adventures! 🍔🍕", description: "Absolutely delighted with my experience! From the friendly staff to the top-notch quality of products, every aspect exceeded my expectations. The positive energy in the environment created a wonderful atmosphere, making my visit truly enjoyable. An outstanding place that consistently delivers excellence.", rating: 2.9, image: "CoverPhoto"), showImage: false)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 30)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Top Categories")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding(.leading, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(products) { item in
                                CategoryCardView(product: item)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 30)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Other Products")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding(.leading, 20)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(otherProducts) { item in
                            ProductItemView(product: item)
                                .padding(.bottom, 5) // Increased bottom padding
                        }
                        .padding(.horizontal, 20)
                    }
                }
            }
            .padding(.top, 10)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
