//
//  MacPlugin
//  Created by Mhd Hejazi on 8/10/20.
//  Copyright © 2020 Samabox. All rights reserved.
//

import AppKit

class MacPlugin: NSObject, Plugin {
    required override init() {
    }

    func sayHello() {
        let alert = NSAlert()
        alert.alertStyle = .informational
        alert.messageText = "Hello from AppKit!"
        alert.informativeText = "It Works!"
        alert.addButton(withTitle: "OK")
        alert.runModal()
    }
}
