//
//  Bramg shte.swift
//  albrg
//
//  Created by mac on 5/23/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import EZLoadingActivity
import SwiftGifOrigin

class Bramg_shte: UIViewController , UITableViewDelegate , UITableViewDataSource {
var lod = false
    @IBOutlet weak var buckbutton: UIButton!
    
    @IBOutlet weak var mytableview: UITableView!
    let ArrayLabel = [ "صحتي بلوبرنت الفضي" ,
                       "صحتي بلوبرنت الفضي بلس" ,
                       "صحتي بلوبرنت الذهبي"  ,
                       "صحتي بلوبرنت البلاتيني للرجال" ,
                       "صحتي بلوبرنت البلاتيني للنساء"  ,
                       "صحتي للأطفال"  ,
                       "صحتي للأطفال بلس" , ]
//    let ArrayLabel = ["صحتي بلوبرنت الفضي "
//    ,"صحتي بلوبرنت الفضي بلس"
//    ,"صحتي بلوبرنت الذهبي"
//    ,"صحتي بلوبرنت البلاتيني للرجال"
//    ,"صحتي بلوبرنت البلاتيني للنساء"
//    ,"صحتي للأطفال"
//    ,"صحتي للأطفال بلس"]
    let myimag1: [UIImage] = [
        UIImage(named: "sehaty_silver_80")! ,
        UIImage(named: "sehaty_silver_plus_80")! ,
        UIImage(named: "sehaty_gold_80")! ,
        UIImage(named: "sehaty_platinum_male_80")! ,
        UIImage(named: "sehaty_platinum_female_80")! ,
        UIImage(named: "sehaty_junior_80")! ,
        UIImage(named: "sehaty_junior_plus_80")!
    ]
    let arr = [ "يشمل هذا البرنامج فحص الوظائف الحيوية لأعضاء الجسم (القلب، الكبد، الكلى، والبنكرياس) وقياس عمل الغدة الدرقية" ,
                "في هذا البرنامج نقدم جميع الفحوصات المتوفرة في صحتي الفضي بالإضافة إلى فحص لقياس عمل الغدة الدرقية و فحوصات لقياس ضغط الدم و أمراض الكبد" ,
                "يشمل هذا البرنامج جميع الاختبارات التي يتضمنها البرنامج الفضي بالإضافة إلى اختبارات متخصصة للكلى والبنكرياس والقلب" ,
                "يشمل البرنامج جميع الاختبارات التي يتضمنها البرنامج الذهبي الهام بالإضافة إلى تحاليل خاصة بصحة البروستات ومستوى هرمون التستوستيرون" ,
                "يشمل البرنامج جميع الاختبارات التي يتضمنها البرنامج الذهبي بالإضافة إلى اختبار هام خاص بكشف مستوى الحديد في الدم" ,
                "يشمل البرنامج اختبارات للكشف عن فقر الدم ونقص الحديد والكشف عن مستوى الرصاص في الدم وكذلك فحص البراز" ,
                "يشمل البرنامج جميع الاختبارات التي يتضمنها برنامج صحتي للأطفال بالإضافة إلى اختبار هام لنسبة الزنك والفيتامين دال" ,
    ]
//    let arr = ["يشمل هذا البرنامج فحص الوظائف الحيوية لأعضاء الجسم (القلب ، الكبد ، الكلي ، و البنكرياس ) و قياس عمل الغدة الدرقية" ,
//               "في هذا البرنامج نقدم جميع الفحوصات المتوفرة في صحتي الفضي بالإضافه إلي فحص لقياس عمل الغدة الدرقية و فحوصات لقياس ضغط الدم وأمراض الكبد" ,
//               "يشمل هذا البرنامج جميع الاختبارات التي يتضمنها البرنامج الفضي بالإضافة إلي اختبارات متخصصة للكلي والبنكرياس والقلب" ,
//               "يشمل البرنامج جميع الاختبارات التي يتضمنهاالبرنامج الذهبي الهام بالإضافه إلي تحاليل خاصة بصحة البروستات ومستوي هرمون التستوستيرون" ,
//               "يشمل البرنامج جميع الاختبارت التي يتضمنها البرنامج الذهبي بالإضافة إلي اختبار هام خاص بكشف مستوي الحديد في الدم " ,
//    "يشمل البرنامج اختبارات للكشف عن فقر الدم ونقص الحديد والكشف عن مستوي الرصاص في الدم وكذلك فحص البراز" ,
//               "يشمل البرنامج جميع الاختبارات التي يتضمنها برنامج صحتي الأطفال بالإضافة إلي اختبار هام لنسبة الزنك والفيتامين دال"]
//
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return ArrayLabel.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! BramgoneTableViewCell
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CEL", for: indexPath) as! BramgtowTableViewCell
        cell.mylabel.text = ArrayLabel[indexPath.row - 1]
        cell.myimage.image = myimag1[indexPath.row - 1]
         cell.mytexst.text = arr[indexPath.row - 1]
        
        
        return cell
    }



    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 320
            
        }

       
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
       if CheckInternet.Connection() {
        if indexPath.row == 1 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "bramgshte1") as! bramgshte1
            present(photoViewController1, animated: false, completion: nil)
            
        } else if indexPath.row == 2 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "bramgshte2") as! bramgshte2
            present(photoViewController1, animated: false, completion: nil)
        } else if indexPath.row == 3 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "bramgshte3") as! bramgshte3
            present(photoViewController1, animated: false, completion: nil)
            
        } else if indexPath.row == 4 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "bramgshte4") as! bramgshte4
            present(photoViewController1, animated: false, completion: nil)
            
        } else if indexPath.row == 5 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "bramgshte5") as! bramgshte5
            present(photoViewController1, animated: false, completion: nil)
        } else if indexPath.row == 6 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "bramgshte6") as! bramgshte6
            present(photoViewController1, animated: false, completion: nil)
        } else if indexPath.row == 7 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "bramgshte7") as! bramgshte7
           
            present(photoViewController1, animated: false, completion: nil)
            
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
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    let btn = UIButton(type: .roundedRect)
    var player:AVPlayer!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        btn.setImage(UIImage(named: "pause_icon"), for: .normal)
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
    
    func cc () {
        
            var steamingURL:NSURL = NSURL(string: "https://www.alabdelaziz.com/mobile_app_feed/alborg/videos/sehaty_programs.mp4")!
            player = AVPlayer(url: steamingURL as URL)
            var avPlayerLayer:AVPlayerLayer = AVPlayerLayer(player: player)
             player.addObserver(self, forKeyPath: "rate", options: .new, context: nil)
            avPlayerLayer.frame = self.myview2.frame
           avPlayerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
            self.myview2.layer .addSublayer(avPlayerLayer)
            
            
            player.play()
            
            myview.isEnabled = false
            
        
       
    }
    
    
    @IBAction func videw(_ sender: Any) {
        
        cc()
        lod = true
         EZLoadingActivity.show("جاري تحميل الفيديو", disableUI: false)
        
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
//……"صحتي بلوبرنت الفضي
//برامج صحتي هي برامج دورية للفحص الطبي في مختبرات البرج الطبية ، و هي تعتبر إحدى مسئولياتنا الاجتماعية المتعلقة برفع مستوى الوعي في المجتمع بشأن الصحة. لقد صممت خصيصا لتلبي احتياجاتك ، فهي تغطي معظم الوظائف الحيوية لأعضاء الجسم (القلب و الكبد و الكليتين و البنكرياس). إشارة إلى أن هذه البرامج قد صممت بطريقة تناسب جميع الأعمار لكل من الرجال و النساء و الأطفال





//
//{
//
//    if player.timeControlStatus == .playing {
//
//        player.pause()
//    } else if player.timeControlStatus == .paused {
//        btn.setImage(UIImage(named: "play_icon"), for: .normal)
//
//        btn.setImage(UIImage(named: "pause_icon"), for: .normal)
//        player.play()
//
//    }
//
//
//
//}
