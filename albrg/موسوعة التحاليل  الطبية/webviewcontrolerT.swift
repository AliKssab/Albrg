//
//  webviewcontrolerT.swift
//  albrg
//
//  Created by mac on 8/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin
class webviewcontrolerT: UIViewController  , UIWebViewDelegate {
    //    var x = ""
    var url = ""
    @IBOutlet weak var webviews: UIWebView!
    @IBOutlet weak var image: UIImageView!
    //    var urls = ""
    //     var datas = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let url = URL(string: "\(x)")
        //        webviews.loadRequest(URLRequest(url: url!))
        webviews.loadRequest(URLRequest(url: URL(string: "\(url)")!))
//        image.image = UIImage.gif(name: "loading")
        image.image = UIImage.gif(name: "loading")
        webviews.isHidden = true
        webviews.delegate = self
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        image.removeFromSuperview()
        webviews.isHidden = false
        
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    
}
