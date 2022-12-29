//
//  back2.swift
//  albrg
//
//  Created by mac on 6/17/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AVFoundation
class back2: UIViewController {
    var audioplayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        let sound = Bundle.main.path(forResource: "close screen_notify", ofType: "mp3")
        do{
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        }catch{
            print("error")
        }     
        // Do any additional setup after loading the view.
    }
    
    @IBAction func no(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    @IBAction func yas(_ sender: Any) {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "main") as? SWRevealViewController
        self.present(calender!, animated: false)
            self.audioplayer.play()
    }
    
   

}
