//
//  Amp.swift
//  RabbitExp
//
//  Created by cesare on 2017/01/28.
//  Copyright © 2017年 cesare. All rights reserved.
//

import Foundation
import RMQClient

class Amp {
    func receive() {
        let delegate = RMQConnectionDelegateLogger()
        let conn =  RMQConnection(uri: "amqp://guest:guest@localhost:5672", delegate: delegate)
        conn.start()

        let ch = conn.createChannel()
        let queue = ch.queue("hello")

        queue.subscribe({(_ message: RMQMessage) -> Void in
            do {
                let msg = try Message.parse(data: message.body)
                let notifier = Notifier()
                notifier.notify(message: msg)
            }
            catch _ {
                // TODO handle errors
            }
        })
    }
}
