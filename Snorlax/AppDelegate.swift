//
//  AppDelegate.swift
//  Snorlax
//
//  Created by Enrique Álvarez Monedero on 01/02/2017.
//  Copyright © 2017 SrMonedero. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let process = Process()
        process.launchPath = "/usr/bin/pmset"
        process.arguments = ["displaysleepnow"]
        process.launch()
        NSApplication.shared().terminate(self)
    }
}

