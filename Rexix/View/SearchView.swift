//
//  SearchView.swift
//  Rexix
//
//  Created by Apple on 08/12/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var selectedFilter = Filter.allCases.first!

    enum Filter: String, CaseIterable {
        case All
        case TopRated
        case Latest
        case NearMe
        case Cheapest
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Search Bar with Placeholder and Search Icon
            HStack {
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray).padding(.leading, 8)
                    SearchBar(text: $searchText, placeholder: "Search for products, businesses, or users")
                }.overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
                    .padding(.leading, 8) // Adjusted padding
                Button(action: {
                    // Perform search action
                    print("Search button tapped")
                }) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.red)
                }
            }

            // Filters
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) { // Adjusted spacing
                    ForEach(Filter.allCases, id: \.self) { filter in
                        Text(filter.rawValue.capitalized.replacingOccurrences(of: "([a-z])([A-Z])", with: "$1 $2", options: .regularExpression))
                            .font(.subheadline)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 0.3)
                            )
                            .onTapGesture {
                                selectedFilter = filter
                            }
                    }
                    Text("See All Filters")
                        .font(.subheadline)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .foregroundColor(.red)
                        .onTapGesture {
                            // Handle see all filters action
                            print("See All Filters tapped")
                        }
                }
            }

            // Results (Replace with your actual search results)
            Text("Search Results:")
                // Add your actual search results here

            Spacer()
        }
        .padding()
        .navigationBarTitle("Search", displayMode: .inline)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        
            SearchView()
        
    }
}

// Custom Search Bar
struct SearchBar: View {
    @Binding var text: String
    var placeholder: String

    var body: some View {
        TextField(placeholder, text: $text)
            .padding([.vertical, .trailing],8)
            
    }
}
