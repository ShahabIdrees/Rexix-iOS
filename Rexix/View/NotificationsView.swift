//
//  NotificationsView.swift
//  Rexix
//
//  Created by Apple on 26/12/2023.
//

import SwiftUI

struct NotificationsView: View {
    @State var notifications = [Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better"),
                                Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better"),
                                Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better"),
                                Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better"),
                                Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better"),
                                Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better"),
                                Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better"),
                                Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better"),
                                Notification(title: "come and conquer the world of reviews", body: "Rate 15 pro max you just bought and help community get better")]
    var body: some View {
        List(notifications) {noti in
            NotificationItem(notification: noti)
        }.navigationTitle("Notifications")
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
