//
//  webviewhomeViewController.swift
//  albrg
//
//  Created by mac on 8/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import SwiftGifOrigin
class webviewhomeViewController: UIViewController , UIWebViewDelegate {
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
         if CheckInternet.Connection() {
         self.dismiss(animated: false, completion: nil)
         } else {
            let alert = UIAlertController(title: nil, message: "هاتفك غير متصل بالانترنت", preferredStyle: .actionSheet)
            
            //            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
            }
        }
    }
    
}
