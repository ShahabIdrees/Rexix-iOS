//
//  MessageItem.swift
//  Rexix
//
//  Created by Apple on 19/12/2023.
//

import SwiftUI

struct MessageItem: View {
    var message: String = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    var isMe: Bool = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8).overlay {
                RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 0.3).foregroundColor(.primary)
            }.foregroundColor(isMe ? .primary : Color(.systemBackground))
            VStack(alignment: .center, spacing: -10){
//                if !isMe {
//                    Spacer()
//                }
                HStack{
                    Text(message).foregroundColor(isMe ? Color(.systemBackground) : .primary)
                    Spacer()
                }
//                isMe ? Spacer() : nil
                Spacer()
                
                
                HStack{
                    Spacer()
                    Text("12:09").foregroundColor(isMe ? Color(.systemBackground) : .primary)
                        .font(.subheadline)
                        .opacity(0.5)
                }
                
            }
            .padding(.horizontal, 5)
            .padding(.vertical,3)
            .frame(minWidth: 20, maxWidth: UIScreen.main.bounds.width * 6/7 - 10, minHeight: 34, maxHeight: UIScreen.main.bounds.width * 3/5 - 6)
        }.frame(minWidth: 30, maxWidth: UIScreen.main.bounds.width * 5/6, minHeight: 30, maxHeight: UIScreen.main.bounds.width * 3/5)
        
    }
}

struct MessageItem_Previews: PreviewProvider {
    static var previews: some View {
        MessageItem()
    }
}
