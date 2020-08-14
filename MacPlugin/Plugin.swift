//
//  Catalyst+AppKit
//  Created by Mhd Hejazi on 8/10/20.
//  Copyright © 2020 Samabox. All rights reserved.
//

import Foundation

@objc(Plugin)
protocol Plugin: NSObjectProtocol {
    init()

    func sayHello()
}
