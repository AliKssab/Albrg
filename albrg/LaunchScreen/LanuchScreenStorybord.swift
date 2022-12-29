//
//  LanuchScreenStorybord.swift
//  albrg
//
//  Created by mac on 5/27/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AVFoundation

class LanuchScreenStorybord: UIViewController {
var x = 0
    @IBOutlet weak var VIEW: UIView!
    @IBOutlet weak var videw: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playVideos()
        
    }
    
    
   
    
    
    
    
    
    
    
    var playerLayer: AVPlayerLayer!
    
    private func playVideos() {
//        self.VIEW.isHidden = false
//        UIView.animateWithDuration(2, delay:5, options:UIViewAnimationOptions.TransitionFlipFromTop, animations: {
//            self.overlay.alpha = 0
//        }, completion: { finished in
//            self.VIEW.hidden = true
//        })
        guard let videoPath = Bundle.main.path(forResource: "intro", ofType:"mp4") else {
            fatalError("can't find intro.mp4 file")
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: videoPath))
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.zPosition = -1
        self.videw.layer.addSublayer(playerLayer)
        
        player.play()
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { _ in

               self.VIEW.isHidden = false

        
            
            let timer = Timer.scheduledTimer(withTimeInterval: 2, repeats:false) {_ in
//
//                DispatchQueue.main.async {
                 self.showMainController()
                
                }
//              self.showMainController()
//        }

            
        }

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        playerLayer.frame = videw.frame
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    private func showMainController() {
        
        guard let window = UIApplication.shared.keyWindow else { return }
        
        
        let mainController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "main")
        window.rootViewController = mainController
//                         self.VIEW.isHidden = false
        UIView.transition(with: window, duration: 1 , options: .autoreverse, animations: nil, completion: nil)
    }

   
}
