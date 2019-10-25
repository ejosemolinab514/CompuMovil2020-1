//
//  ViewController.swift
//  WebViewDelegate
//
//  Created by 2020-1 on 10/25/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.bvb.de")
        webView.load(URLRequest(url: url!))
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("Hacking Apple")
    }
}
