//
//  Notification.swift
//  Rexix
//
//  Created by Apple on 26/12/2023.
//

import Foundation

struct Notification: Identifiable {
    let id = UUID()
    var title: String
    var body: String?
}
