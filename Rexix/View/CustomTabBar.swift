//
//  CustomTabBar.swift
//  Rexix
//
//  Created by Apple on 07/11/2023.
//

import SwiftUI

enum Tab: String, CaseIterable{
    case house
    case message
    case person
    case magnifyingglass
    case gearshape
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()

                    Image(systemName: {
                        if selectedTab == .magnifyingglass {
                            return selectedTab == tab ? "magnifyingglass.circle.fill" : tab.rawValue
                        } else {
                            return selectedTab == tab ? tab.rawValue + ".fill" : tab.rawValue
                        }
                    }())
                    .scaleEffect(tab == selectedTab ? 1.5 : 1.0)
                    .foregroundColor(tab == selectedTab ? .red : .gray)
                    .font(.system(size: 22))
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.1)) {
                            selectedTab = tab
                        }
                    }

                    Spacer()
                }
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: 60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}
