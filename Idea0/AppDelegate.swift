//
//  AppDelegate.swift
//  Idea0
//
//  Created by Administrator on 9/30/18.
//  Copyright © 2018 Social Software Limited. All rights reserved.
//

import Cocoa

class Application: NSApplication, NSApplicationDelegate {

    private lazy var WindowController = MainWindowController()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder) // This will never called.
    }
    
    override init() {
        super.init()
        delegate = self
        // Insert code here to initialize your application
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        WindowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
