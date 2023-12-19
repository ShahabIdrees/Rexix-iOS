//
//  MessageDateHeader.swift
//  Rexix
//
//  Created by Apple on 19/12/2023.
//

import SwiftUI

struct MessageDateHeader: View {
    var text: String = "Today"
    var body: some View {
        HStack{
            Spacer()
            ZStack{
                Text(text).foregroundColor(.secondary).padding(5).background(.primary.opacity(0.1))
            }
            .overlay {
                RoundedRectangle(cornerRadius: 5).stroke().foregroundColor(.secondary.opacity(0.5))
            }
            Spacer()
        }
    }
}

struct MessageDateHeader_Previews: PreviewProvider {
    static var previews: some View {
        MessageDateHeader()
    }
}
