import SwiftUI

struct User: Identifiable {
    var id: UUID = UUID()
    var username: String
    var profileImage: String
    var isFollowing: Bool
}

struct FollowersView: View {
    @State private var followers: [User] = [
        User(username: "John Doe", profileImage: "ProfilePlaceHolder", isFollowing: true),
        User(username: "Jane Smith", profileImage: "ProfilePlaceHolder", isFollowing: false),
        User(username: "Jon Snow", profileImage: "ProfilePlaceHolder", isFollowing: true),
        User(username: "Johnny Depp", profileImage: "ProfilePlaceHolder", isFollowing: true),
        User(username: "Jimmy Doe", profileImage: "ProfilePlaceHolder", isFollowing: true),
        User(username: "Justin Doe", profileImage: "ProfilePlaceHolder", isFollowing: true),
        User(username: "John Doe", profileImage: "ProfilePlaceHolder", isFollowing: true),
        User(username: "John Doe", profileImage: "ProfilePlaceHolder", isFollowing: true),
        User(username: "John Doe", profileImage: "ProfilePlaceHolder", isFollowing: true),

        // Add more followers...
    ]

    @State private var following: [User] = [
        User(username: "Alice Johnson", profileImage: "ProfilePlaceHolder", isFollowing: true),
        User(username: "Bob Williams", profileImage: "ProfilePlaceHolder", isFollowing: false),
        // Add more following...
    ]

    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Picker(selection: $selectedTab, label: Text("Followers")) {
                    Text("Followers").tag(0)
                    Text("Following").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                .foregroundColor(.primary) // Set picker text color
                
                Divider()
                
                List(selectedTab == 0 ? followers : following) { user in
                    NavigationLink(destination: ProfileView()) {
                        UserRow(user: user, isFollowing: selectedTab == 1)
                            .listRowBackground(Color.white) // Set list row background color
                    }
                }
                .navigationBarTitle("ShahabIdrees")
                .navigationBarTitleDisplayMode(.large)
            }
            .padding(.vertical, 8)
        }
    }
}

struct UserRow: View {
    var user: User
    var isFollowing: Bool
    
    var body: some View {
        HStack {
            Image(user.profileImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2)) // Add border to profile image
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.username)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text("Last post: 2 days ago") // Add additional user details
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Button(action: {
                // Handle button action (e.g., remove or follow/unfollow logic)
                // For simplicity, toggling isFollowing state
                // user.isFollowing.toggle()
            }) {
                Text(isFollowing ? "Following" : "Remove")
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.accentColor) // Use accent color for the button
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .buttonStyle(PlainButtonStyle()) // Use plain button style for a minimalistic look
        }
        .padding(.vertical, 8)
    }
}


struct FollowersView_Previews: PreviewProvider {
    static var previews: some View {
        FollowersView()
    }
}
