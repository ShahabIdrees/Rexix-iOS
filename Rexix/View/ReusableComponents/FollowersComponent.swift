import SwiftUI

struct FollowersComponent: View {
    var followersCount: Int
    var followingCount: Int
    var postsCount: Int

    var body: some View {
        HStack(spacing: 16) {
            Spacer()
            VStack(alignment: .center, spacing: 4) {
                Text("\(followersCount)")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Followers")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .center, spacing: 4) {
                Text("\(followingCount)")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Following")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .center, spacing: 4) {
                Text("\(postsCount)")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Posts")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(16).frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct FollowersComponent_Previews: PreviewProvider {
    static var previews: some View {
        FollowersComponent(followersCount: 100, followingCount: 50, postsCount: 30)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
