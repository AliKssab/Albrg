//
//  shrkaina1.swift
//  albrg
//
//  Created by mac on 5/19/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin


class shrkaina1: UIViewController , UIWebViewDelegate {
   
    @IBOutlet weak var webview: UIWebView!
    
    
    @IBOutlet weak var lodingimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lodingimage.image = UIImage.gif(name: "loading")
        webview.delegate = self
        webview.isHidden = true
       let url = URL(string: "https://www.alrajhitakaful.com/Arabic/Pages/Home.aspx")
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
//https://www.alrajhitakaful.com/Arabic/Pages/Home.aspx
