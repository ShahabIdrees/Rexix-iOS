import SwiftUI

struct ReviewItem: View {
    var item = Review()
    var showImage: Bool

    init(review item: Review = Review(), showImage: Bool = true) {
        self.item = item
        self.showImage = showImage
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top) {
                
                    Image("ProfilePlaceHolder")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.secondary, lineWidth: 0.1))
                        .padding(.trailing, 10)
                

                VStack(alignment: .leading, spacing: 1) {
                    Text("John Doe")
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text("2 hours ago")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text(String(item.rating))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold))
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 5.0)
                            .foregroundColor(getRatingColor(rating: item.rating))
                    )
                    .zIndex(1)
            }
            .padding(.bottom, 5)

            Divider()

            Text(item.title)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.primary)

            Text(item.description.prefix(150))
                .font(.body)
                .foregroundColor(.primary)

            if showImage {
                Image("CoverPhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxHeight: 300)
                    .cornerRadius(10)
            }

            LikeDislikeView()
                .padding(.bottom, -10)
        }
        .padding(10)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.secondary, lineWidth: 0.1)
        )
        .shadow(color: .secondary, radius: 1)
        .padding(.top, showImage ? 0 : 10)
        .frame(maxWidth: showImage ? .infinity : UIScreen.main.bounds.width - 40) // Adjusted frame width
    }

    func getRatingColor(rating: Double) -> Color {
        switch rating {
        case ..<3.0:
            return .red
        case 3.0..<4.0:
            return .yellow
        default:
            return .green
        }
    }
}

struct ReviewItem_Previews: PreviewProvider {
    static var previews: some View {
        ReviewItem()
    }
}
