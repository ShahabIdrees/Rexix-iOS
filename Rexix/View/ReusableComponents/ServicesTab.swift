//
//  ServicesTab.swift
//  Rexix
//
//  Created by Apple on 12/12/2023.
//

import SwiftUI

struct ServicesTab: View {
    let services: [Service] 

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                ForEach(services) { service in
                    ServiceTabItem(service: service)
                        .padding() // Add padding to each ServiceTabItem
                }
            }
            .padding()
        }
        //.background(Color.gray.opacity(0.1)) 
    }
}


struct ServicesTab_Previews: PreviewProvider {
    static var previews: some View {
        ServicesTab(services: [Service()])
    }
}
