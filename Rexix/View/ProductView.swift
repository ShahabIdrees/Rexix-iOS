import SwiftUI

struct ProductView: View {
    var images: [String]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Product Name")
                    .font(.title)
                    .padding(.leading)

                ImageCarousel(images: self.images)

                Text("Brand: Brand Name")
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
            }
            .padding()
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(images: ["Person1", "Person2", "Person3", "Person4"])
    }
}
