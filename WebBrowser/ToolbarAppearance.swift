//
//  ToolbarAppearance.swift
//  WebBrowser
//
//  Created by Xin Hong on 16/4/30.
//  Copyright © 2016年 Teambition. All rights reserved.
//

import UIKit

internal struct ToolbarAppearance {
    var hidden = true
    var tintColor = UIColor.blue
    var barTintColor: UIColor?
    var translucent = true

    init() { }

    init(toolbar: UIToolbar) {
        tintColor = toolbar.tintColor
        barTintColor = toolbar.barTintColor
        translucent = toolbar.isTranslucent
    }

    func applyToToolbar(_ toolbar: UIToolbar) {
        toolbar.tintColor = tintColor
        toolbar.barTintColor = barTintColor
        toolbar.isTranslucent = translucent
    }
}
