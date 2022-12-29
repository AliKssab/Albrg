//
//  bramgshte1.swift
//  albrg
//
//  Created by mac on 5/25/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class bramgshte1: UIViewController , UIWebViewDelegate  {

  
    @IBOutlet weak var lodingimage: UIImageView!
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lodingimage.image = UIImage.gif(name: "loading")
        webview.delegate = self
        webview.isHidden = true
        let url = URL(string: "https://www.alabdelaziz.com/mobile_app_feed/alborg/sehaty%20programs/silver/silver_ar.html")
        webview.loadRequest(URLRequest(url: url!))
    }
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("sdfghjkl")
        lodingimage.isHidden = true
        webview.isHidden = false
    }
}
