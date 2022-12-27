//
//  AboutUsVC.swift
//  neXjob.in
//
//  Created by Pioneer on 19/12/22.
//

import UIKit
import WebKit

class AboutUsVC: UIViewController,WKUIDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
            self.view.addSubview(webView)
            let url = URL(string: "https://www.nexjob.in/about")
            webView.load(URLRequest(url: url!))
    }
    
 }
