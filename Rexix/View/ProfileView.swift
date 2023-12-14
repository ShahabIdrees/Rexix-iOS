import SwiftUI

struct ProfileView: View {
    @State private var profileImageSize: CGFloat = 200
    @State private var isFollowersViewActive: Bool = false
    
    var body: some View {
            ScrollView {
                VStack {
                    Image("CoverPhoto")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .frame(maxWidth: .infinity)
                        .clipped()
                    
                    ProfileImageCircular()
                        .offset(y: -profileImageSize / 2)
                        .padding(.bottom, -profileImageSize / 2 + 20)
                    
                    NavigationLink(
                        destination: FollowersView(),
                        isActive: $isFollowersViewActive,
                        label: {
                            EmptyView() // Use EmptyView to hide the link
                        })
                        .hidden()
                    
                    FollowersComponent(followersCount: 49, followingCount: 69, postsCount: 9)
                        .padding(.horizontal, 8)
                        .onTapGesture {
                            isFollowersViewActive = true
                        }
                    
                    CloseFriends()
                        .padding(.horizontal, 8)
                    Divider()
                    HStack{
                        Text("Reviews").font(.title.bold()).padding(.horizontal, 16)
                        Spacer()
                    }
                    
                    ProfilePostsView(reviewPosts:[
                        Review(title: "Awesome day at the beach! 🌊☀️", description: "Exceptional service! From the moment I entered, the staff's warm welcome set the tone for a delightful experience. The attention to detail and the quality of products exceeded my expectations. A positive atmosphere coupled with impeccable service makes this place a standout. Can't wait to return!", rating: 4.9, image: "15proleft"),
                        Review(title: "Exploring new places! 🏞️", description: "Incredible customer service and a truly inviting atmosphere! The team goes above and beyond to ensure a positive experience. The product quality is outstanding, and the attention to customer satisfaction is evident in every interaction. A highly recommended and enjoyable establishment!", rating: 3.9, image: "15probottom"),
                        Review(title: "Delicious food adventures! 🍔🍕", description: "Absolutely delighted with my experience! From the friendly staff to the top-notch quality of products, every aspect exceeded my expectations. The positive energy in the environment created a wonderful atmosphere, making my visit truly enjoyable. An outstanding place that consistently delivers excellence.", rating: 2.9, image: "15protop"),
                    ])
                }
                .padding(.top)
                .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                .frame(maxHeight: .infinity)
               
            }
            .navigationBarTitle("Shahab Idrees", displayMode: .automatic)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
