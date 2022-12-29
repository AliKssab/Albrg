//
//  WebViewController.swift
//  albrg
//
//  Created by mac on 4/28/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import WebKit
import Alamofire
import SwiftyJSON
import SwiftGifOrigin

class WebViewController: UIViewController , UIWebViewDelegate {

    @IBOutlet weak var lodingimage: UIImageView!
    @IBOutlet weak var WebViews: WKWebView!
    
    var url = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

            self.GetData(url: self.url)
        lodingimage.image = UIImage.gif(name: "loading")

        WebViews.isHidden = true
    }
    
    
 
    func webViewDidFinishLoad(_ webView: UIWebView) {

        lodingimage.removeFromSuperview()
        WebViews.isHidden = false
        if webView.isLoading {
            print("loading")
           
            return
        }
    }
  
    func GetData(url : String){
      //  DispatchQueue.main.async {
        Alamofire.request(url, method: .get, parameters: [:], encoding: URLEncoding.default, headers: nil).validate(statusCode:200..<300).response(completionHandler: { [weak self] (result) in
                if result.response?.statusCode == 200 {
                    let link = String(data: result.data!, encoding: .utf8)!
                    let urlrequst  = URLRequest(url: (URL(string: "https://" + link)!))
       
                  //  print("Done  \(link) :: \(urlrequst)")
//                    DispatchQueue.main.async {
                        self?.WebViews.load(urlrequst)
//                    }
                    
                    
                }else{
                    print("aaaaaaaaaaaaaaa\(result.error)")
                }
            })
    }
    
    @IBAction func back(_ sender: UIButton) {
        
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "main") as? SWRevealViewController
        self.present(calender!, animated: false)

        
    }
}
    
 
