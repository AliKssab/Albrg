//
//  instgram.swift
//  albrg
//
//  Created by mac on 6/21/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class instgram: UIViewController  , UIWebViewDelegate {

    @IBOutlet weak var webviewinsta: UIWebView!
    @IBOutlet weak var lodingimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lodingimage.image = UIImage.gif(name: "loading")
        webviewinsta.delegate = self
        webviewinsta.isHidden = true
        let url = URL(string: "https://www.instagram.com/AlBorgME")
        webviewinsta.loadRequest(URLRequest(url: url!))
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
        webviewinsta.isHidden = false
    }
}
