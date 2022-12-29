//
//  webviewsecond.swift
//  albrg
//
//  Created by mac on 9/1/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin
class webviewsecond: UIViewController  , UIWebViewDelegate{
    @IBOutlet weak var web: UIWebView!
    var dataweb:String!
    var labelss:String!
    
    @IBOutlet weak var imag: UIImageView!
    
    @IBOutlet weak var labeL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL.init(string: "\(dataweb!)")
        web.loadRequest(URLRequest(url: url!))
        labeL.text = labelss
        imag.image = UIImage.gif(name: "loading")
        web.isHidden = true
        web.delegate = self
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        imag.removeFromSuperview()
        web.isHidden = false
        if web.isLoading {
            print("loading")
            
            return
        }
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    

}
