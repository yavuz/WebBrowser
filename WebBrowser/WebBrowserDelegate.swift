//
//  WebBrowserDelegate.swift
//  WebBrowser
//
//  Created by Xin Hong on 16/4/26.
//  Copyright © 2016年 Teambition. All rights reserved.
//

import UIKit

public protocol WebBrowserDelegate: class {
    func webBrowser(_ webBrowser: WebBrowserViewController, didStartLoadingURL URL: URL?)
    func webBrowser(_ webBrowser: WebBrowserViewController, didFinishLoadingURL URL: URL?)
    func webBrowser(_ webBrowser: WebBrowserViewController, didFailToLoadURL URL: URL?, error: NSError)

    func webBrowserWillDismiss(_ webBrowser: WebBrowserViewController)
    func webBrowserDidDismiss(_ webBrowser: WebBrowserViewController)
}

public extension WebBrowserDelegate {
    func webBrowser(_ webBrowser: WebBrowserViewController, didStartLoadingURL URL: Foundation.URL?) {

    }

    func webBrowser(_ webBrowser: WebBrowserViewController, didFinishLoadingURL URL: Foundation.URL?) {

    }

    func webBrowser(_ webBrowser: WebBrowserViewController, didFailToLoadURL URL: Foundation.URL?, error: NSError) {

    }

    func webBrowserWillDismiss(_ webBrowser: WebBrowserViewController) {

    }

    func webBrowserDidDismiss(_ webBrowser: WebBrowserViewController) {

    }
}
