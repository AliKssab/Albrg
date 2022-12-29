//
//  Rakb7altkalshea.swift
//  albrg
//
//  Created by mac on 6/17/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin


class Rakb7altkalshea: UIViewController  , UIWebViewDelegate{

  


    @IBOutlet weak var webview: UIWebView!
  
    
//    @IBOutlet weak var lodingimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:
             "https://seemyresult.com/mobile/?lang=ar&deviceReady=1&iframe=1&os=ios#!/healthtrackerForm.html" )
        webview.loadRequest(URLRequest(url: url!))
        
      
//        lodingimage.image = UIImage.gif(name: "loading")
//        webview.delegate = self
//        webview.isHidden = true
        
        
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("sdfghjkl")
//        lodingimage.isHidden = true
//        webview.isHidden = false
    }
}
//let url = URL(string:
//    "https://seemyresult.com/mobile/?lang=ar&deviceReady=1&iframe=1#!/healthtrackerForm.html")
