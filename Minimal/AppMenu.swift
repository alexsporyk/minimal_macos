//
//  AppMenu.swift
//
//  Minimal MacOS
//  Created by Alex Sporyk on 9/30/18.
//

import Cocoa

class AppMenu: NSMenu {
    
    private lazy var applicationName = ProcessInfo.processInfo.processName

    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }
    
    init() {
        super.init(title: "MainMenu")
        
        let rootMenuItem = NSMenuItem()
        rootMenuItem.submenu = NSMenu(title: "MainMenu")

        rootMenuItem.submenu?.addItem(withTitle: "About \(applicationName)", action: #selector(NSApplication.orderFrontStandardAboutPanel(_:)), keyEquivalent: "")
        
        rootMenuItem.submenu?.addItem(NSMenuItem.separator())
        
        rootMenuItem.submenu?.addItem(withTitle: "Quit \(applicationName)", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
        
        addItem(rootMenuItem)
    }
    
}
