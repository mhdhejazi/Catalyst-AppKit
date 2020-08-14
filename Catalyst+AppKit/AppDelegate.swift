//
//  
//  Created by Mhd Hejazi on 8/10/20.
//  Copyright © 2020 Samabox. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        loadPlugin()

        return true
    }

    private func loadPlugin() {
        /// 1. Form the plugin's bundle URL
        let bundleFileName = "MacPlugin.bundle"
        guard let bundleURL = Bundle.main.builtInPlugInsURL?
                                    .appendingPathComponent(bundleFileName) else { return }

        /// 2. Create a bundle instance with the plugin URL
        guard let bundle = Bundle(url: bundleURL) else { return }

        /// 3. Load the bundle and our plugin class
        let className = "MacPlugin.MacPlugin"
        guard let pluginClass = bundle.classNamed(className) as? Plugin.Type else { return }

//        /// 3. Load the bundle and the principal class
//        guard let pluginClass = bundle.principalClass as? Plugin.Type else { return }

        /// 4. Create an instance of the plugin class
        let plugin = pluginClass.init()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            plugin.sayHello()
        }
    }
}
