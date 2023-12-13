import SwiftUI

struct ProductView: View {
    var images: [String] = ["15profront", "15proback", "15proleft", "15proright","15proangled", "15proangled2", "15protop", "15probottom"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("iPhone 15 Pro")
                    .font(.title)
                    .padding(.leading)
                
                ProductStatsComponent(userCount: 290485, reviewCount: 148940, rating: 4.5)

                ImageCarousel(images: self.images).padding(.horizontal, -10)

                Text("Brand: Apple")
                    .font(.headline)
                    .padding(.leading)
                    .padding(.top, 20)


                Divider() // Add a divider for better separation

                Text("Specifications:")
                    .font(.headline)
                    .padding(.leading)

                // You can format your specifications as a table or display as raw text
                // Example of a simple table:
                VStack(alignment: .leading, spacing: 4) {
                    Text("Spec 1: Value 1")
                    Text("Spec 2: Value 2")
                    Text("Spec 3: Value 3")
                    // Add more specifications as needed
                }
                .padding(.leading)
                Divider()
                Text("Reviews").font(.title3)
                ReviewItem(review: Review())
                
            }
            .padding()
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(images: ["15profront", "15proback", "15proleft", "15proright","15proangled", "15proangled2", "15protop", "15probottom"])
    }
}
