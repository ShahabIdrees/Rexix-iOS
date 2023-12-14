import SwiftUI

struct ProductItemView: View {
    var product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // Image Section
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()

            // Text Section
            VStack(alignment: .leading, spacing: 5) {
                NavigationLink(destination: ProductView()){
                    Text(product.name)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.primary)
                        .padding([.horizontal, .top], 20)
                }
                NavigationLink(destination: BrandProfileView()){
                    Text(product.brand)
                        .foregroundColor(Color.primary)
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .padding([.horizontal], 20)
                }
            }

            // Rating Section
            HStack {
                Text(String(format: "%.1f", product.rating))
                    .foregroundColor(.green)
                    .padding([.leading, .bottom], 5) // Added padding to the left and bottom

                Spacer()

                ProgressBar(value: product.rating / 5.0)
                    .frame(width: 200, height: 10) // Adjusted width
            }
            .padding(.horizontal, 20) // Added horizontal padding

            // Reviews Section
            Text("(1k+ reviews)")
                .font(.caption)
                .foregroundColor(.secondary)
                .padding([.leading, .bottom], 20) // Added padding to the left and bottom

            // Description Section
            Text(product.description.prefix(200))
                .font(.system(size: 14))
                .foregroundColor(Color.primary)
                .padding(.horizontal, 20)
                .multilineTextAlignment(.leading)

            Spacer()
        }
        .frame(maxWidth: UIScreen.main.bounds.width - 40)
        .frame(maxHeight: UIScreen.main.bounds.height * 3/5)
        .frame(minHeight: 450)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.secondary.opacity(0.4), radius: 5, x: 0, y: 2)
        .fixedSize(horizontal: false, vertical: true) // Allow the view to expand vertically
    }
}

// ... (other code remains the same)


struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product(
            name: "Sample Product",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            imageName: "CoverPhoto",
            rating: 4.2,
            brand: "Sample Brand"))
    }
}

struct ProgressBar: View {
    var value: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color.gray)

                Rectangle()
                    .frame(width: min(CGFloat(self.value) * geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color.green)
                    .animation(.linear)
            }
            .cornerRadius(5.0)
        }
    }
}
