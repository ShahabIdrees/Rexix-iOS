import SwiftUI
struct CloseFriends: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 0){
                HStack {
                    Text("Close Friends")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Text("See All")
                            .foregroundColor(.blue)
                            .font(.callout)
                    }
                }
                .frame(maxWidth: .infinity)
                Text("3 Friends")
            }
            
            VStack{
                HStack(alignment: .top) {
                    NavigationLink(destination: ProfileView(), label: {
                        FriendComponent(name: "Ebad Ullah", imageName: "Person1")
                    })
                    NavigationLink(destination: ProfileView(), label: {
                        FriendComponent(name: "Dawood Ahm", imageName: "Person2")
                    })
                    NavigationLink(destination: ProfileView(), label: {
                        FriendComponent(name: "Abadullah Ad", imageName: "Person3")
                    })
                }.frame(maxWidth: .infinity)
                HStack(alignment: .top, spacing: 10) {
                    NavigationLink(destination: ProfileView(), label: {
                        FriendComponent(name: "Suleman Aw", imageName: "Person4")
                    })
                    NavigationLink(destination: ProfileView(), label: {
                        FriendComponent(name: "Muhammad S" , imageName: "Person5")
                    })
                    NavigationLink(destination: ProfileView(), label: {
                        FriendComponent(name: "Saad Chattha" , imageName: "Person6")
                    })
                }
                
            }.frame(maxWidth: .infinity)
        }.frame(maxWidth: .infinity)
        .padding()
        .cornerRadius(10)
    }
}



struct CloseFriends_Previews: PreviewProvider {
    static var previews: some View {
        CloseFriends()
    }
}
