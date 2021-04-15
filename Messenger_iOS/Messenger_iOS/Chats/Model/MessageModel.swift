//
//  MessageModel.swift
//  Messenger_iOS
//
//  Created by  Aleksandr Afrikanov on 15.04.2021.
//

import UIKit

class MessageModel {
    
    var avatar: UIImage!
    var name: String!
    var message: String!
    var date: Date!
    var isRead: Bool!
    
    init(avatar: UIImage, name: String, message: String, date: Date, isRead: Bool) {
        self.avatar = avatar
        self.name = name
        self.message = message
        self.date = date
        self.isRead = isRead
    }
    
}
