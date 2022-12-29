//
//  back.swift
//  albrg
//
//  Created by mac on 6/16/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AVFoundation
class back: UIViewController {
var audioplayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        let sound = Bundle.main.path(forResource: "close screen_notify", ofType: "mp3")
        do{
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        }catch{
            print("error")
        }        // Do any additional setup after loading the view.
    }
    

    @IBAction func no(_ sender: Any) {
         audioplayer.play()
         self.dismiss(animated: false, completion: nil)
        
    }
    @IBAction func yas(_ sender: Any) {
          audioplayer.play()
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "main") as? SWRevealViewController
        self.present(calender!, animated: false)
        
    print("ccc")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
