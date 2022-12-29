//
//  tweter.swift
//  albrg
//
//  Created by mac on 6/21/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class tweter: UIViewController  , UIWebViewDelegate  {

    
    @IBOutlet weak var lodingimage: UIImageView!
    @IBOutlet weak var webviewtweter: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lodingimage.image = UIImage.gif(name: "loading")
        webviewtweter.delegate = self
        webviewtweter.isHidden = true
        let url = URL(string: "https://www.twitter.com/AlBorgME")
        webviewtweter.loadRequest(URLRequest(url: url!))
    }
    
    
    @IBAction func Back(_ sender: Any) {
         self.dismiss(animated: false, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("sdfghjkl")
        lodingimage.isHidden = true
        webviewtweter.isHidden = false
    }
}
