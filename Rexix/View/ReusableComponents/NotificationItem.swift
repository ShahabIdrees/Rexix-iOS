//
//  NotificationItem.swift
//  Rexix
//
//  Created by Apple on 26/12/2023.
//

import SwiftUI

struct NotificationItem: View {
    var notification: Notification

    var body: some View {
        HStack(spacing: 10) {
            Image("ProfilePlaceHolder")
                .resizable()
                .frame(width: 40, height: 40)

            VStack(alignment: .leading) {
                Text(notification.title).font(.headline)
                Text(notification.body ?? "").font(.body)
                Text("23:10").font(.caption)
            }

            Spacer() // Add Spacer to push Image(systemName: "ellipsis") to the right
            Image(systemName: "ellipsis")
        }
        .frame(maxWidth: UIScreen.main.bounds.width - 20)
    }
}

struct NotificationItem_Previews: PreviewProvider {
    static var previews: some View {
        NotificationItem(notification: Notification(title: "Come back we need your help and ", body: "Help us get stronger and better"))
    }
}
