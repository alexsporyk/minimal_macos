//
//  main.swift
//
//  Minimal MacOS
//  Created by Alex Sporyk on 9/30/18.
//

import Foundation
import AppKit

autoreleasepool {
    let App = Application.shared
    App.setActivationPolicy(.regular)
    App.run()
}
