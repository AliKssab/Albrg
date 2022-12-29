//
//  Nsaik Shte.swift
//  albrg
//
//  Created by mac on 5/23/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import EZLoadingActivity
 


class Nsaik_Shte: UIViewController {

  
    @IBOutlet weak var buckbutton: UIButton!
    var lod = false
    @IBAction func almrkzaltbe(_ sender: Any) {
         if CheckInternet.Connection() {
        if let url = URL(string: "http://37.216.219.168:8077/Login?Type=Center") {
            UIApplication.shared.open(url)
        }
         } else {
            let alert = UIAlertController(title: nil, message: "هاتفك غير متصل بالانترنت", preferredStyle: .actionSheet)
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
            }
        }
    }
    
    
    @IBAction func almstshfa(_ sender: Any) {
         if CheckInternet.Connection() {
        if let url = URL(string: "http://37.216.219.168:8077/Login/Index/?Type=Hospital") {
            UIApplication.shared.open(url)
        }
         } else {
            let alert = UIAlertController(title: nil, message: "هاتفك غير متصل بالانترنت", preferredStyle: .actionSheet)
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
            }
        }
    }
    
   
    @IBAction func almred(_ sender: Any) {
          if CheckInternet.Connection() {
        if let url = URL(string: "http://37.216.219.168:8077/Login?Type=Individual") {
            UIApplication.shared.open(url)
        }
          } else {
            let alert = UIAlertController(title: nil, message: "هاتفك غير متصل بالانترنت", preferredStyle: .actionSheet)
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
            }
        }
    }
    
    
    @IBAction func itbai(_ sender: UIButton) {
        if CheckInternet.Connection() {
        if let url = URL(string: "http://37.216.219.168:8077/Login/Index/?Type=Doctor") {
            UIApplication.shared.open(url)
        }
        } else {
            let alert = UIAlertController(title: nil, message: "هاتفك غير متصل بالانترنت", preferredStyle: .actionSheet)
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
            }
        }
    }
    
    @IBAction func back(_ sender: UIButton) {
        if lod {
            player.removeObserver(self, forKeyPath: "rate")
            player = nil
        }
        self.dismiss(animated: false, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    let btn = UIButton(type: .roundedRect)
    var player:AVPlayer!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        btn.setImage(UIImage(named: "pause_icon"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFit
        btn.tintColor = UIColor.init(red: 35/255, green: 159/255, blue: 133/255, alpha: 1)
        
        buckbutton.clipsToBounds = true
        buckbutton.layer.borderColor = UIColor.white.cgColor
        buckbutton.layer.borderWidth = 3
        buckbutton.layer.cornerRadius = 15
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(self.didPlayToEnd), name: .AVPlayerItemDidPlayToEndTime, object: nil)
    }
    @IBOutlet weak var myview: UIButton!
    @IBOutlet weak var myview2: UIView!
    
    
    
    
    
    
    deinit {
//        player.removeObserver(self, forKeyPath: "rate")
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "rate" {
            if let rate = change?[NSKeyValueChangeKey.newKey] as? Float, rate != 0 {
                // playing
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.5, execute: {
                    self.btn.backgroundColor = UIColor.gray
                    self.btn.alpha = 0.5
                    //   btn.setTitle("Puse", for: .normal)
                    self.btn.frame = CGRect(x: 20, y:20, width: 70, height: 70)
                    //         btn.imageView?.contentMode = .scaleAspectFit
                    self.btn.addTarget(self, action: #selector(self.pressButton(button:)), for: .touchUpInside)
                    self.btn.isUserInteractionEnabled = true
                    self.btn.isEnabled = true
                    self.btn.clipsToBounds = true
                    self.btn.layer.cornerRadius = 20
                    //
                    self.myview2?.addSubview((self.btn as? UIButton)!)
                    EZLoadingActivity.hide()
                })
                
            }
        }
    }
    
    func playvedio(){
        
            
            var steamingURL:NSURL = NSURL(string: "https://www.alabdelaziz.com/mobile_app_feed/alborg/videos/test_results.mp4")!
            player = AVPlayer(url: steamingURL as URL)
            var avPlayerLayer:AVPlayerLayer = AVPlayerLayer(player: player)
        player.addObserver(self, forKeyPath: "rate", options: .new, context: nil)
            avPlayerLayer.frame = self.myview2.frame
            self.myview2.layer .addSublayer(avPlayerLayer)


        avPlayerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        
            
            player.play()
            
            myview.isEnabled = false
        
        
    
    }
    
    @IBAction func videw(_ sender: Any) {
         lod = true
            EZLoadingActivity.show("جاري تحميل الفيديو", disableUI: false)
            playvedio()
        
        
        
            
            
            
            
     
    }
    
    @objc func didPlayToEnd() {
        btn.setImage(UIImage(named: "replay_icon"), for: .normal)
        player.seek(to: CMTimeMakeWithSeconds(0, preferredTimescale: 1))
    }
    @objc func pressButton(button: UIButton) {
        if player.rate >= 1 {
            button.setImage(UIImage(named: "play_icon"), for: .normal)
            player.pause()
        } else {
            button.setImage(UIImage(named: "pause_icon"), for: .normal)
            player.play()
        }
    }
}





