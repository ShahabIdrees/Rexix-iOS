import SwiftUI

struct ReviewTabItem: View {
    let review: Review

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(review.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle()) // Make the image round

                VStack(alignment: .leading, spacing: 4) {
                    Text(review.userId)
                        .font(.headline) // Use appropriate font for the user's name
                        .foregroundColor(.black) // Adjust color as needed

                    Text("Posted on \(formattedDate())")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()

                Text(String(format: "%.1f", review.rating))
                    .font(.subheadline)
                    .foregroundColor(getRatingColor()) // Determine color based on rating
                    .padding(.top, 8)
            }

            Text(review.title)
                .font(.headline)

            Text(review.description)
                .font(.body)
                .foregroundColor(.black)

            LikeDislikeView()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }

    // Helper function to format the date (replace it with your own date formatting logic)
    private func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: Date())
    }

    // Helper function to determine the color based on the rating
    private func getRatingColor() -> Color {
        switch review.rating {
        case ..<3:
            return .red
        case 3..<4:
            return .yellow
        default:
            return .green
        }
    }
}

struct ReviewTabItem_Previews: PreviewProvider {
    static var previews: some View {
        let sampleReview = Review(
            title: "Great Product!",
            description: "I really loved this product. It exceeded my expectations.",
            rating: 4.5,
            productId: "123",
            image: "CoverPhoto",
            userId: "john_doe",
            replies: []
        )

        return ReviewTabItem(review: sampleReview)
    }
}
