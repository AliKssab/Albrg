//
//  sh5smrdek.swift
//  albrg
//
//  Created by mac on 5/16/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin



class sh5smrdek: UIViewController   , UIWebViewDelegate {

//    @IBOutlet weak var lodingimage: UIImageView!
    @IBOutlet weak var webview: UIWebView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: 
            "https://www.123esaaf.com/easydoctor/index_ar.html")
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

