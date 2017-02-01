//
//  Notifier.swift
//  RabbitExp
//
//  Created by cesare on 2017/01/29.
//  Copyright © 2017年 cesare. All rights reserved.
//

import Foundation

class Notifier {
    func notify(message: Message) {
        let notification = NSUserNotification.init()
        notification.title = message.title
        notification.informativeText = message.text
        NSUserNotificationCenter.default.deliver(notification)
    }
}
