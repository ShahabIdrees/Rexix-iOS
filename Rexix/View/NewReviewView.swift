import SwiftUI

struct NewReviewView: View {
    @State private var productSearchQuery = ""
    @State private var brandSearchQuery = ""
    @State private var reviewTitle = ""
    @State private var reviewDescription = ""
    @State private var rating = 1 // Assuming rating can be 1 to 5
    @State private var selectedImages: [UIImage] = [] // Images to upload

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    TextField("Select Product", text: $productSearchQuery)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button(action: {
                        // Add your product search action
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)

                HStack {
                    TextField("Select Brand", text: $brandSearchQuery)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button(action: {
                        // Add your brand search action
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)

                Text("Review Title")
                    .font(.headline)
                    .padding(.leading)

                TextField("Enter your review title", text: $reviewTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Text("Review Description")
                    .font(.headline)
                    .padding(.leading)

                TextEditor(text: $reviewDescription)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke())
                    .foregroundColor(.secondary).opacity(0.3)
                    .cornerRadius(10)
                    .padding(.horizontal)

                Text("Rating")
                    .font(.headline)
                    .padding(.leading)

                Picker("", selection: $rating) {
                    ForEach(1..<6) { number in
                        Text("\(number)")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Upload Images")
                        .font(.headline)

                    // Placeholder for images
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                            .frame(height: 200)
                            .opacity(0.3)
                            .padding(.horizontal)

                        Image(systemName: "plus")
                            .resizable()    
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.secondary)
                            .frame(width: 40, height: 40)
                    }

                    // Add your image upload logic here
                    // You can use a button or some other UI element to trigger the image selection/upload
                    // and update the selectedImages array accordingly
                }
                .padding(.horizontal)

                Button(action: {
                    // Add your logic to post the review
                }) {
                    Text("Post Review")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

struct NewReviewView_Previews: PreviewProvider {
    static var previews: some View {
        NewReviewView()
    }
}
