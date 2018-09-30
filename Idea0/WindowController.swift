//
//  WindowController.swift
//  Idea0
//
//  Created by Administrator on 9/30/18.
//  Copyright © 2018 Social Software Limited. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    private (set) lazy var rootViewController = RootViewController()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init() {
        
        let window = NSWindow(contentRect: CGRect(x: 0, y: 0, width: 600, height: 400), styleMask: [.titled, .closable, .resizable, .miniaturizable], backing: .buffered, defer: true)
        
        // minimim window size
        window.minSize = CGSize(width: 600, height: 400)
        
        super.init(window: window)
        
        // Sets the window’s location to the center of the screen
        window.center()

        rootViewController.view.setFrameSize(window.contentRect(forFrameRect: window.frame).size)
        window.contentViewController = rootViewController
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

}
