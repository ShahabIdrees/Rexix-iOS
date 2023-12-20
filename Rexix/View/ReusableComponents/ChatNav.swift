//
//  ChatNav.swift
//  Rexix
//
//  Created by Apple on 19/12/2023.
//

import SwiftUI

struct ChatNav: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.primary).opacity(0.05) // Whitish color for light mode
                        .ignoresSafeArea()
                        .frame(height: 50)
            HStack(spacing: 12){
                Button {
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    Image(systemName: "arrow.backward")
                }
                Image("ProfilePlaceHolder").resizable().frame(width: 30, height: 30).clipped().clipShape(Circle())
                VStack(alignment: .leading){
                    Text("Name").foregroundColor(.primary)
                    Text("last seen 2hours ago").foregroundColor(.secondary).font(.subheadline)
                }
                
                Spacer()
                
            }
            .padding([.leading, .bottom, .trailing], 8)
            .frame(width: UIScreen.main.bounds.width - 16)
        }
        Spacer()
    }
}

struct ChatNav_Previews: PreviewProvider {
    static var previews: some View {
        ChatNav()
    }
}
