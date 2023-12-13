import SwiftUI
import FirebaseFirestore

struct ReviewDetailsView: View {
    var review: Review

    init(currentReview: Review) {
        self.review = currentReview
    }

    var body: some View {
        ScrollView {
            VStack( alignment: .leading, spacing: 10) {
                
                ReviewItem(review: self.review)
                    .padding(10)

                Divider()
                Text("Replies")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.horizontal, 10)
                    .padding(.top, 10)

                if let firstReplyDescription = review.replies.first?.description {
                    ReplyItem(review: review.replies.first ?? Reply())
                        .padding( 10)
                        .background(Color.white)
                        .cornerRadius(10)
                        // Removed shadow from here
                } else {
                    Text("No replies available.")
                        .foregroundColor(.gray)
                        .padding()
                }

                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width)
        //.shadow(radius: 2) // Apply shadow here
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        ReviewDetailsView(currentReview: Review())
    }
}
