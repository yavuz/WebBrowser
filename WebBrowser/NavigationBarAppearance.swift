//
//  NavigationBarAppearance.swift
//  WebBrowser
//
//  Created by Xin Hong on 16/4/30.
//  Copyright © 2016年 Teambition. All rights reserved.
//

import UIKit

internal struct NavigationBarAppearance {
    var hidden = false
    var tintColor = UIColor.blue
    var barTintColor: UIColor?
    var translucent = true
    var shadowImage: UIImage?
    var backgroundImageForBarMetricsDefault: UIImage?
    var backgroundImageForBarMetricsCompact: UIImage?

    init() { }

    init(navigationBar: UINavigationBar) {
        tintColor = navigationBar.tintColor
        barTintColor = navigationBar.barTintColor
        translucent = navigationBar.isTranslucent
        shadowImage = navigationBar.shadowImage
        backgroundImageForBarMetricsDefault = navigationBar.backgroundImage(for: .default)
        backgroundImageForBarMetricsCompact = navigationBar.backgroundImage(for: .compact)
    }

    func applyToNavigationBar(_ navigationBar: UINavigationBar) {
        navigationBar.tintColor = tintColor
        navigationBar.barTintColor = barTintColor
        navigationBar.isTranslucent = translucent
        navigationBar.shadowImage = shadowImage
        navigationBar.setBackgroundImage(backgroundImageForBarMetricsDefault, for: .default)
        navigationBar.setBackgroundImage(backgroundImageForBarMetricsCompact, for: .compact)
    }
}
