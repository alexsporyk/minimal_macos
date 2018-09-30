//
//  RootViewController.swift
//  Idea0
//
//  Created by Administrator on 9/30/18.
//  Copyright © 2018 Social Software Limited. All rights reserved.
//

import Cocoa

class RootViewController: NSViewController {

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        // Do additional init here.
    }
    
    override func loadView() {
        view = NSView()
        view.wantsLayer = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
