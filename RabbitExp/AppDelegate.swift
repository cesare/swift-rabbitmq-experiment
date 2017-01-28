//
//  AppDelegate.swift
//  RabbitExp
//
//  Created by cesare on 2017/01/22.
//  Copyright © 2017年 cesare. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let amp = Amp()
        amp.receive()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

