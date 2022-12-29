//
//  oagbat almrde.swift
//  albrg
//
//  Created by mac on 6/19/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class oagbat_almrde: UIViewController {

    @IBOutlet weak var videw: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
setupview ()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    private func setupview () {
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "contact_us_video" , ofType: "mp4")!)
        let player = AVPlayer(url: path)
        let newlaer = AVPlayerLayer(player: player)
        newlaer.frame = self.videw.frame
        self.videw.layer.addSublayer(newlaer)
        newlaer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        newlaer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        player.play()
        player.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none


        NotificationCenter.default.addObserver(self, selector:  #selector(oagbat_almrde.videoDidPlayToEnd(_:)), name: NSNotification.Name(rawValue: "AVPlayerItemDidPlayToEndTimeNotification") , object: player.currentItem)
        
    }

    
    @objc func videoDidPlayToEnd(_ notification: Notification) {
        let player:AVPlayerItem = notification.object as!AVPlayerItem
        player.seek(to: CMTime.zero)
        
        
    }
    
    
    
    
    
    
}
