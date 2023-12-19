import SwiftUI

struct BrandProfileView: View {
    @State private var selectedTab: String = "Products"
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack(alignment: .top, spacing: 20) {
                    // Brand Logo
                    Image("ProfilePlaceHolder")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .cornerRadius(50)
                        .overlay(Circle().stroke(lineWidth: 0.1))
                    // Brand Name and Tagline
                    VStack(alignment: .leading) {
                        Text("Apple")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Cupertino, California").font(.subheadline).foregroundColor(.secondary)
                        HStack(alignment: .top){
                            Image(systemName: "link")
                            Button("Visit Website"){
                                if let url = URL(string: "https://www.apple.com") {
                                    UIApplication.shared.open(url)
                                }
                            }
                        }.padding(.top, 1)
                    }
                }
                HStack{
                    VStack(spacing: 10){
                        HStack{
                            Image(systemName: "phone.fill").font(.system(size: 20))
                            Text("923 44 444")
                            Spacer()
                            Button {
                                print("aaskmskmksmd")
                            } label: {
                                Image(systemName: "square.on.square").font(.system(size: 20))
                            }
//                            Button {
//                                print("aaskmskmksmd")
//                            } label: {
//                                Image(systemName: "arrow.uturn.forward.square")
//                            }
                        }
                        HStack(alignment: .top){
                            Image(systemName: "mappin").font(.system(size: 20))
                            Text("Apple Inc. 1 Apple Park Way, Cupertino, CA 95014, United States")
                            Spacer()
                            Button {
                                print("aaskmskmksmd")
                            } label: {
                                Image(systemName: "square.on.square").font(.system(size: 20))
                            }
//                            Button {
//                                print("aaskmskmksmd")
//                            } label: {
//                                Image(systemName: "arrow.uturn.forward.square")
//                            }
                        }
                        HStack(alignment: .center){
                            Image(systemName: "mappin.and.ellipse").font(.system(size: 20))
                            NavigationLink {
                                ShowLocationView()
                            } label: {
                                Text("View Locations")
                            }

                            Spacer()
                        }
                    }
                }
                BrandStatsComponent(customerCount: 293838, reviewCount: 909049, rating: 4.9)
                // Rating and ProgressBar
                //                HStack {
                //                    Text("Rating: 4.5")
                //                        .foregroundColor(.green)
                //
                //                    Spacer()
                //
                //                    ProgressBar(value: 0.9)
                //                        .frame(width: 200, height: 10)
                //                }
                
                // Tabs (Products, Services, Reviews)
                Divider()
                HStack(spacing: 0) {
                    ForEach(["Products", "Services", "Reviews"], id: \.self) { tab in
                        TabButton(title: tab, isSelected: selectedTab == tab) {
                            selectedTab = tab
                        }
                        Spacer()
                    }
                }
                .padding(.top, -25)
                Divider().padding(.top, -20)
                
                // Displaying content based on selected tab
                if selectedTab == "Products" {
                    ProductsTab().padding(.top, -35)
                } else if selectedTab == "Services" {
                    ServicesTab(services: [Service(), Service(), Service()]).padding(.top, -35).padding(.horizontal, -20)
                } else if selectedTab == "Reviews" {
                    ReviewsTab().padding(.top, -35).padding(.horizontal, -20)
                }
            }
            .padding(20)
        }
        .navigationBarTitle("Apple", displayMode: .inline)
        
    }
}


struct TabButton: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Text(title)
            .font(.headline)
            .foregroundColor(isSelected ? Color(red: 176/255, green: 8/255, blue: 20/255) : .primary)
            .padding(15)
            .background(
                ZStack {
                    if isSelected {
                        Color(red: 176/255, green: 8/255, blue: 20/255)
                            .frame(height: 3)
                            .offset(y: 24)
                    }
                }
            )
            .onTapGesture {
                action()
            }
    }
}

struct BrandProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        BrandProfileView()
    }
}

