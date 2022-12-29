//
//  face.swift
//  albrg
//
//  Created by mac on 6/21/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class face: UIViewController  , UIWebViewDelegate  {

    @IBOutlet weak var lodingimage: UIImageView!
    @IBOutlet weak var webviewfacebok: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lodingimage.image = UIImage.gif(name: "loading")
        webviewfacebok.delegate = self
        webviewfacebok.isHidden = true
        let url = URL(string: "https://www.facebook.com/AlBorgME")
        webviewfacebok.loadRequest(URLRequest(url: url!))
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
        webviewfacebok.isHidden = false
    }
}
