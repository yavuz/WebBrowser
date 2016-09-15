//
//  SafariActivity.swift
//  WebBrowser
//
//  Created by Xin Hong on 16/4/27.
//  Copyright © 2016年 Teambition. All rights reserved.
//

import UIKit

open class SafariActivity: UIActivity {
    open var URL: Foundation.URL?

    open override var activityType : UIActivityType? {
        return UIActivityType(rawValue: NSStringFromClass(type(of: self)))
    }

    open override var activityTitle : String? {
        return LocalizedString(key: "Open in Safari")
    }

    open override var activityImage : UIImage? {
        return WebBrowser.image(named: "safariIcon")
    }

    open override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        for activityItem in activityItems {
            if let activityURL = activityItem as? Foundation.URL {
                return UIApplication.shared.canOpenURL(activityURL)
            }
        }
        return false
    }

    open override func prepare(withActivityItems activityItems: [Any]) {
        for activityItem in activityItems {
            if let activityURL = activityItem as? Foundation.URL {
                URL = activityURL
            }
        }
    }

    open override func perform() {
        if let URL = URL {
            let completed = UIApplication.shared.openURL(URL)
            activityDidFinish(completed)
        }
    }
}
