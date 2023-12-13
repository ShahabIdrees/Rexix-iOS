import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image("RexixLogo") // Assuming you have a logo image
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                .shadow(radius: 7)

            Text("Welcome to Rexix!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            Text("Explore, Share, Connect")
                .font(.headline)
                .foregroundColor(.gray)

            Text("Rexix is a platform where you can share reviews for any product or service. Explore what your friends and family are posting. Search for your favorite items, brands, or services and post your valuable reviews. Join us in revolutionizing the feedback system and influencing every purchase decision.")
                .font(.body)
                .foregroundColor(Color.primary)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()

            HStack(spacing: 20) {
                SocialMediaLink(iconName: "twitter", link: "https://twitter.com/ShahabIdrees001")
                SocialMediaLink(iconName: "facebook", link: "https://facebook.com")
                SocialMediaLink(iconName: "linkedin", link: "https://linkedin.com")
                // Add more social media links as needed
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}

struct SocialMediaLink: View {
    var iconName: String
    var link: String

    var body: some View {
        Button(action: {
            if let url = URL(string: link), UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            }
        }) {
            Image(systemName: "")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
            Text(iconName)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
