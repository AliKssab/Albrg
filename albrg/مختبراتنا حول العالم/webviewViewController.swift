//
//  webviewViewController.swift
//  albrg
//
//  Created by mac on 6/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class webviewViewController: UIViewController , UIWebViewDelegate {
    @IBOutlet weak var lodingimage: UIImageView!
    @IBOutlet weak var webvie: UIWebView!
    var lat: Double!
    
    var lon: Double!
    override func viewDidLoad() {
        lodingimage.image = UIImage.gif(name: "loading")
        webvie.delegate = self
        webvie.isHidden = true
        super.viewDidLoad()
        let url = URL.init(string: "https://www.google.com/maps/?q=\(lat!),\(lon!)")
        
        webvie.loadRequest(URLRequest(url: url!))
        
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        //        lodingimage.isHidden = true
        lodingimage.removeFromSuperview()
        webView.isHidden = false
        if webView.isLoading {
            print("loading")
            
            return
        }
    }
    @IBAction func back(_ sender: Any) {
         self.dismiss(animated: false, completion: nil)
    }
    

}
