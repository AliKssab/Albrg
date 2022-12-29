//
//  zearhmnzleh.swift
//  albrg
//
//  Created by mac on 6/2/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import DLRadioButton
import AVFoundation
import AVKit
import DropDown
import MessageUI
import EZLoadingActivity





class zearhmnzleh: UIViewController , MFMailComposeViewControllerDelegate ,UITextFieldDelegate {
    @IBOutlet weak var buckbuton: UIButton!
    @IBOutlet weak var calender: UILabel!
    @IBOutlet weak var zzzz: UITextField!
    @IBOutlet weak var locetion: UITextField!
    @IBOutlet weak var mil: UITextField!
    @IBOutlet weak var namper: UITextField!
    @IBOutlet weak var name: UITextField!
     @IBOutlet weak var calenderasd: UIButton!
    
    @IBOutlet  weak var buutonone: DLRadioButton!
    //    صوره السيدة
    @IBOutlet weak var buttonetow: DLRadioButton!
    @IBAction func man(_ sender: Any) {
        Gender = "Male"
    }
    
    @IBAction func women(_ sender: Any) {
        Gender = "female"
    }
    var audioplayer = AVAudioPlayer()
    var lod1 = false
    override func viewDidLoad() {
        super .viewDidLoad()
        btn.setImage(UIImage(named: "pause_icon"), for: .normal)
        btn.tintColor = UIColor.init(red: 35/255, green: 159/255, blue: 133/255, alpha: 1)
        dropDown.anchorView = button1
        dropDown.anchorView = button2
        button2.isEnabled = false
        dropDown.anchorView = button2
        dropDown.anchorView = calenderasd
        calenderasd.isEnabled = false
        dropDown.anchorView = calenderasd
        dropDown.anchorView = button3
        button3.isEnabled = false
        locetion.isEnabled = false
        zzzz.isEnabled = false
        buutonone.isSelected = true
        namper.keyboardType = .numberPad
        name.delegate = self
        namper.delegate = self
        mil.delegate = self
        zzzz.delegate = self
        locetion.delegate = self
//        name.tag = 0
//        namper.tag = 1001
//        mil.tag = 1002
 
        buckbuton.clipsToBounds = true
        buckbuton.layer.borderColor = UIColor.white.cgColor
        buckbuton.layer.borderWidth = 3
        buckbuton.layer.cornerRadius = 15        ////  نقل التكست من تكست الي تكست
        let sound = Bundle.main.path(forResource: "send_email_notify", ofType: "mp3")
        do{
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        }catch{
            print("error")
        }     
    }
    
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == name {
            textField.resignFirstResponder()
            namper.becomeFirstResponder()
        } else if textField == namper {
            textField.resignFirstResponder()
            mil.becomeFirstResponder()
        } else if textField == mil
        {
            textField.resignFirstResponder()
             locetion.becomeFirstResponder()
        } else if textField == locetion {
            textField.resignFirstResponder()
            zzzz.becomeFirstResponder()
        } else if textField == zzzz {
            textField.resignFirstResponder()
            
        }
        
        
        
        
        
        
        
        
        return true
    }
   
    
    
    var Gender:String = "Male"
   
    @IBAction func wicca(_ sender: Any) {
        if let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? calender{
            calender.delegate = self
            
            self.present(calender, animated: true)
        }
        
        self.button3.isEnabled = true
        self.button3.backgroundColor = UIColor.white
        self.button3.setTitleColor(UIColor.black, for: .normal )
        
    }
    
    @IBOutlet weak var button3: UIButton!
    
    @IBAction func button03(_ sender: UIButton) {
       
        dropDown.dataSource = [ "وقت الزيارة*" , "10-12 ص" , "12 - 2 م" , "2 - 4 م"  ]
        dropDown.direction = .bottom
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.selecetdValue = item
            self.button3.setTitle(item, for: .normal)
            self.button1.isEnabled = true
            self.button1.backgroundColor = UIColor.white
            self.button1.setTitleColor(UIColor.black, for: .normal )
            self.locetion.isEnabled = true
              self.zzzz.isEnabled = true
        }
        dropDown.show()
        dropDown.dismissMode = .automatic
        self.button3.setTitle("وقت الزيارة*", for: .normal)
    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        let nextTag = name.tag + 1
//        
//        if let nextResponder = name.superview?.viewWithTag(nextTag) {
//            nextResponder.becomeFirstResponder()
//        } else {
//            name.resignFirstResponder()
//        }
//
//        return true
//    }

    
    
    private var selecetdValue: String?
    
    let dropDown = DropDown()
    
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
   
   var Z = 0
    @IBAction func a5tardoltek(_ sender: UIButton) {
        
        dropDown.dataSource = ["اختر دولتك*",
                               "السعودية",
                               "الإمارات"
            ,"الكويت"
            ,"البحرين"
            ,"قطر"
            ,"عمان"
            ,"السودان"
       
            ,"إثيوبيا" ]
     
        dropDown.direction = .bottom
        
        // Action triggered on selection
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.selecetdValue = item
//            self.a5tardoltek11.setTitle(item, for: .normal)
            self.button1.setTitle(item, for: .normal)
            if item ==  "اختر دولتك*" {
                self.button2.isEnabled = false
                self.calenderasd.isEnabled = false
                self.button3.isEnabled = false
                self.locetion.isEnabled = false
                self.zzzz.isEnabled = false
//               self .button2.setTitle = ["اختر مدينتك*"]
                 self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.Z = 1
            } else if item ==  "السعودية" {
                self.Z = 2
                self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.button2.isEnabled = true
            } else if item == "الإمارات" {
                self.Z = 3
                self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.button2.isEnabled = true
            } else if item ==  "الكويت" {
                self.Z = 4
                self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.button2.isEnabled = true
            } else if item == "البحرين" {
                self.Z = 5
                self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.button2.isEnabled = true
            } else if item ==  "قطر" {
                self.Z = 6
                self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.button2.isEnabled = true
            } else if item ==  "عمان" {
                self.Z = 7
                self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.button2.isEnabled = true
            } else if item ==  "السودان" {
                self.Z = 8
                self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.button2.isEnabled = true
            } else if item ==  "إثيوبيا" {
                self.Z = 9
                self.button2.setTitle("اختر مدينتك*", for: .normal)
                self.button2.isEnabled = true
            }
//            self.button2.isEnabled = true
            self.button2.backgroundColor = UIColor.white
            self.button2.setTitleColor(UIColor.black, for: .normal )
        }
        dropDown.show()
        dropDown.dismissMode = .automatic
    }
    
    
    @IBAction func a5tarmdentk1(_ sender: UIButton) {
        
       
        if Z == 1 {
            
            self.button2.setTitle("اختر مدينتك*" , for: .normal)        }
        if Z == 2 {
            dropDown.dataSource = ["اختر مدينتك*", "جدة", "الرياض" , "مكة" , "الدمام" , "الخبر" , "حائل" , "الطائف" , "خميس مشيط"
                , "عنيزة" , "جازان" , "ينبع" , "أيها"]
            
        } else if Z == 3 {  dropDown.dataSource = ["اختر مدينتك*" ,  "دبي" , "أبو ظبي" , ]
            
        } else if Z == 4 { dropDown.dataSource = ["اختر مدينتك*", "الكويت"]
            
        } else if Z == 5 { dropDown.dataSource = ["اختر مدينتك*" , "المنامة"]
            
        } else if Z == 6 { dropDown.dataSource = ["اخترمدينتك*", "الدوحة"]
            
        } else if Z == 7 {  dropDown.dataSource = ["اختر مدينتك*", "مسقط"]
            
        } else if Z == 8 {  dropDown.dataSource = ["اختر مدينتك*", "الخرطوم"]
            
        } else if Z == 9 { dropDown.dataSource = ["اختر مدينتك*", "أديس أبابا"]
            
        }
        
        dropDown.direction = .bottom
        
        // Action triggered on selection
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            
            self.selecetdValue = item
            //            self.a5tardoltek11.setTitle(item, for: .normal)
            self.button2.setTitle(item, for: .normal)
            if item == "اختر مدينتك*"{
                self.button3.isEnabled = false
                self.calenderasd.isEnabled = false
            }    else if item == "جدة" || item == "الرياض" || item == "مكة" || item == "الدمام" || item == "الخبر" || item == "حائل" || item == "الطائف"  || item == "خميس مشيط" || item == "عنيزة" || item == "جازان" || item == "ينبع" || item == "أيها" || item == "دبي" || item == "أبو ظبي" || item == "الكويت" || item == "المنامة" || item == "الدوحة" || item == "مسقط" || item == "الخرطوم" || item == "أديس أبابا" {
//                self.button3.isEnabled = true
                self.calenderasd.isEnabled = true
                
                
            }
            
            
        }

        dropDown.show()
        dropDown.dismissMode = .automatic
//        self.calenderasd.isEnabled = true
        self.calender.backgroundColor = UIColor.white
//        self.calender.setTitleColor(UIColor.black, for: .normal )
       
    }


    
    
 
    
    
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
    
    
    
    func lod() {
        var steamingURL:NSURL = NSURL(string: "https://www.alabdelaziz.com/mobile_app_feed/alborg/videos/home_visit.mp4")!
        player = AVPlayer(url: steamingURL as URL)
        var avPlayerLayer:AVPlayerLayer = AVPlayerLayer(player: player)
        player.addObserver(self, forKeyPath: "rate", options: .new, context: nil)
        avPlayerLayer.frame = self.myview2.frame
           avPlayerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        self.myview2.layer .addSublayer(avPlayerLayer)
        player.play()
        
        myview.isEnabled = false
        
       
    }
    
    
    
    
//     الفيدو
    
    
    let btn = UIButton(type: .roundedRect)
    var player:AVPlayer!
    
   
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(self.didPlayToEnd), name: .AVPlayerItemDidPlayToEndTime, object: nil)
    }
    @IBOutlet weak var myview: UIButton!
    @IBOutlet weak var myview2: UIView!
    
    
    @IBAction func videw(_ sender: Any) {
        lod1 = true
        lod()
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
    
    
    
    
    
    
    func alertfanf(){
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
    
    
    
    
    
    
//ارسال البينات الي الميل
    
    @IBAction func sentmaile(_ sender: Any) {
        guard let username = self.name.text , !username.isEmpty
            else {
                let alert = UIAlertController(title: nil, message: "يجب كتابة اسم المريض" , preferredStyle: .actionSheet)
                
                self.present(alert, animated: true, completion: nil)
                
                let when = DispatchTime.now() + 3
                DispatchQueue.main.asyncAfter(deadline: when){
                    alert.dismiss(animated: true , completion: nil)
                    alert.view.tintColor = UIColor.black
                    alert.view.backgroundColor = UIColor.cyan  // change background color
                    alert.view.layer.cornerRadius = 25
                    
                }
                return
        }
        
        guard let phot = self.namper.text , !phot.isEmpty
            else  {
                let alert = UIAlertController(title: nil, message: "يجب كتابة رقم الهاتف", preferredStyle: .actionSheet)
                
                self.present(alert, animated: true, completion: nil)
                
                let when = DispatchTime.now() + 3
                DispatchQueue.main.asyncAfter(deadline: when){
                    alert.dismiss(animated: true , completion: nil)
                    alert.view.tintColor = UIColor.black
                    alert.view.backgroundColor = UIColor.cyan  // change background color
                    alert.view.layer.cornerRadius = 25
                    
                }
                return
        }
        
        
        
        
        if self.button1.titleLabel!.text == "اختر دولتك"  {
            let alert = UIAlertController(title: nil, message: "يجب اختيار دولتك", preferredStyle: .actionSheet)
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
                
            }
            
        }
        
        
        if self.button2.titleLabel!.text == "اختار مدينتك " {
            let alert = UIAlertController(title: nil, message: "برجاء اختيار المدينة", preferredStyle: .actionSheet)
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
                
            }
            
        }
        
        
        
        
        
        if self.button3.titleLabel!.text == "وقت الزيارة*" {
            let alert = UIAlertController(title: nil, message: "برجاء اختيار وقت الزيارة", preferredStyle: .actionSheet)
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
                
            }
            
        }
        
        
        
        
        
        
        
        
        
        guard let loceione = self.locetion.text , !loceione.isEmpty
            else  {
                let alert = UIAlertController(title: nil, message: "يجب كتابة العنوان ", preferredStyle: .actionSheet)
                
                self.present(alert, animated: true, completion: nil)
                
                let when = DispatchTime.now() + 3
                DispatchQueue.main.asyncAfter(deadline: when){
                    alert.dismiss(animated: true , completion: nil)
                    alert.view.tintColor = UIColor.black
                    alert.view.backgroundColor = UIColor.cyan  // change background color
                    alert.view.layer.cornerRadius = 25
                    
                }
                return
        }
        
        if  self.calenderasd.titleLabel?.text == " تاريخ الزيارة*" {
            let alert = UIAlertController(title: nil, message: "يجب كتابة تاريخ الزيارة", preferredStyle: .actionSheet)
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
                
            }
            
        }
        
        var myalert =  UIAlertController(title: nil,
                                         message: nil ,
                                         preferredStyle: .alert)
        
        let imgTitle = UIImage(named:"email_send")
        let imgViewTitle = UIImageView(frame: CGRect(x: 200, y: 10, width: 50, height: 50))
        imgViewTitle.image = imgTitle
        let label = UILabel(frame: CGRect(x: 55, y: 30, width: 180, height: 120))
        label.font = UIFont(name: label.font.fontName, size: 14)
        label.textAlignment = NSTextAlignment.center
        
        label.text = "هل أنت متأكد من أرسال الطلب    إلي مختبرات البرج الطبية? سوف تستقبل مكالمةهاتفية لتأكيدالطلب    في خلال٢٤ساعةمن أقرب مختبر إليك"
        label.textColor = UIColor(red: 0/255, green: 150/255, blue: 136/255, alpha:1)
        label.numberOfLines = 4
        myalert.view.addSubview(label)
        //  myalert.message = UIAlertController(coder : CGRect(x: 150, y: 30, width: 50, height: 50))
        
        var mybutt = UIAlertAction(title: "لا", style: .default) { (UIAlertAction) in
        }
      
        var mybutt2 = UIAlertAction(title:"نعم", style: .default) { (UIAlertAction) in
        
            self.audioplayer.play()
            
            
            
            
            let mailComposeViewController = self.configureMailControler()
            if MFMailComposeViewController.canSendMail() {
                self.present( mailComposeViewController , animated: true , completion: nil)
            } else {
                self.showMailError()
            }
            

        }
        // hight
        var height:NSLayoutConstraint = NSLayoutConstraint(item: myalert.view, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.height * 0.23)
        myalert.view.addConstraint(height)
        // width
        //        var width:NSLayoutConstraint = NSLayoutConstraint(item: myalert.view, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.width * 9)
        //        myalert.view.addConstraint(width)
        mybutt2.setValue(UIColor(red: 190/255, green: 44/255, blue: 44/255, alpha:1), forKey: "titleTextColor")
//        mybutt2.frame = CGRect(x: 20, y:20, width: 70, height: 70)
//mybutt.accessibilityFrame = CGRect(x: 20, y: 20, width: 70, height: 70)
        mybutt.setValue(UIColor(red: 31/255, green: 103/255, blue: 61/255, alpha:1), forKey: "titleTextColor")
        myalert.view.addSubview(imgViewTitle)
        
        myalert.addAction(mybutt2)
        myalert.addAction(mybutt)
        present(myalert,animated: true,completion: nil)

           
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func back(_ sender: UIButton) {
        if lod1 {
            player.removeObserver(self, forKeyPath: "rate")
            player = nil
        }
         self.dismiss(animated: false, completion: nil)
    }
    func configureMailControler() -> MFMailComposeViewController {
        let milComposerVC = MFMailComposeViewController()
        milComposerVC.mailComposeDelegate = self
        milComposerVC.setToRecipients(["support@alborglaboratories.com"])
        milComposerVC.setSubject("طلب زيارة منزلية - Home Visit Request")
        
        
        
        
        
        milComposerVC.setMessageBody("THE FOLLOWING PATIENT REQUESTS A HOME VISIT TO BE CONCERNED: \n \n Name:\( name.text! )\n Gender:\(Gender)\n Phone:\( namper.text! )\n E-mail: \(mil.text!)\n Country:\(button1.titleLabel!.text!)\n City:\(button2.titleLabel!.text!)\n Visit Date:\( calender.text! )\n Visit Time:\(button3.titleLabel!.text!)\n Address:\( locetion.text! )\n Notes:\( zzzz.text! )\n \n ** This request is sent by Al Borg Laboratories' iOS Mobile Application created by: Al Abdel Aziz Company © for softwares. New Damietta, Egypt.  " , isHTML: false)

        return milComposerVC
    }
    
    func showMailError() {
        let sendMailErrorAlert = UIAlertController(title: "cold note send emil", message: "your devicecould not send emil", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "ok", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present( sendMailErrorAlert , animated: true , completion: nil)
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
extension zearhmnzleh:MonthViewDelegate {
    func selectedDate(date: Date?) {
        
        guard let selectedDate = date else {return}
        print(selectedDate)
        let dateformat = DateFormatter()
        dateformat.dateFormat = "dd-MM-YYY"
        let formattedDate = dateformat.string(from: selectedDate)
        self.calender.text = "\(formattedDate)"
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField.returnKeyType == .done {
//            name.resignFirstResponder()
//            namper.becomeFirstResponder()
//        } else if textField.returnKeyType == .go {
//            namper.resignFirstResponder()
////            self.Login_Action()
//        }
//        return true
//    }
}
//extension zearhmnzleh:MonthViewDelegate {
//    func selectedDate(date: Date?) {
//        guard let selectedDate = date else {return}
//        self.calender.text = "\(selectedDate)"
//    }
//}















//
//{
//    guard let username = name.text , !username.isEmpty
//        else {
//            let alert = UIAlertController(title: nil, message: "يجب كتابة اسم المريض" , preferredStyle: .actionSheet)
//
//            self.present(alert, animated: true, completion: nil)
//
//            let when = DispatchTime.now() + 3
//            DispatchQueue.main.asyncAfter(deadline: when){
//                alert.dismiss(animated: true , completion: nil)
//                alert.view.tintColor = UIColor.black
//                alert.view.backgroundColor = UIColor.cyan  // change background color
//                alert.view.layer.cornerRadius = 25
//                
//            }
//            return
//    }
//    
//    guard let phot = namper.text , !phot.isEmpty
//        else  {
//            let alert = UIAlertController(title: nil, message: "يجب كتابة رقم الهاتف", preferredStyle: .actionSheet)
//            
//            self.present(alert, animated: true, completion: nil)
//            
//            let when = DispatchTime.now() + 3
//            DispatchQueue.main.asyncAfter(deadline: when){
//                alert.dismiss(animated: true , completion: nil)
//                alert.view.tintColor = UIColor.black
//                alert.view.backgroundColor = UIColor.cyan  // change background color
//                alert.view.layer.cornerRadius = 25
//                
//            }
//            return
//    }
//    
//
//    
//    
//    if button1.titleLabel!.text == "اختر دولتك*"  {
//        let alert = UIAlertController(title: nil, message: "يجب اختيار دولتك", preferredStyle: .actionSheet)
//        
//        self.present(alert, animated: true, completion: nil)
//        
//        let when = DispatchTime.now() + 3
//        DispatchQueue.main.asyncAfter(deadline: when){
//            alert.dismiss(animated: true , completion: nil)
//            alert.view.tintColor = UIColor.black
//            alert.view.backgroundColor = UIColor.cyan  // change background color
//            alert.view.layer.cornerRadius = 25
//            
//        }
//        
//    }
//    
//    
//    if button2.titleLabel!.text == "اختار مدينتك *" {
//        let alert = UIAlertController(title: nil, message: "برجاء اختيار المدينة", preferredStyle: .actionSheet)
//        
//        self.present(alert, animated: true, completion: nil)
//        
//        let when = DispatchTime.now() + 3
//        DispatchQueue.main.asyncAfter(deadline: when){
//            alert.dismiss(animated: true , completion: nil)
//            alert.view.tintColor = UIColor.black
//            alert.view.backgroundColor = UIColor.cyan  // change background color
//            alert.view.layer.cornerRadius = 25
//            
//        }
//        
//    }
//    
//    
//
//
//    
//    if button3.titleLabel!.text == "وقت الزيارة*" {
//        let alert = UIAlertController(title: nil, message: "برجاء اختيار وقت الزيارة", preferredStyle: .actionSheet)
//        
//        self.present(alert, animated: true, completion: nil)
//        
//        let when = DispatchTime.now() + 3
//        DispatchQueue.main.asyncAfter(deadline: when){
//            alert.dismiss(animated: true , completion: nil)
//            alert.view.tintColor = UIColor.black
//            alert.view.backgroundColor = UIColor.cyan  // change background color
//            alert.view.layer.cornerRadius = 25
//            
//        }
//
//    }
//
//    
//    
//    
//    
//    
//
//
//
//    guard let loceione = locetion.text , !loceione.isEmpty
//        else  {
//            let alert = UIAlertController(title: nil, message: "يجب كتابة العنوان ", preferredStyle: .actionSheet)
//            
//            self.present(alert, animated: true, completion: nil)
//            
//            let when = DispatchTime.now() + 3
//            DispatchQueue.main.asyncAfter(deadline: when){
//                alert.dismiss(animated: true , completion: nil)
//                alert.view.tintColor = UIColor.black
//                alert.view.backgroundColor = UIColor.cyan  // change background color
//                alert.view.layer.cornerRadius = 25
//                
//            }
//            return
//    }
//    
//    if  calenderasd.titleLabel?.text == " تاريخ الزيارة*" {
//        let alert = UIAlertController(title: nil, message: "يجب كتابة تاريخ الزيارة", preferredStyle: .actionSheet)
//        
//        self.present(alert, animated: true, completion: nil)
//        
//        let when = DispatchTime.now() + 3
//        DispatchQueue.main.asyncAfter(deadline: when){
//            alert.dismiss(animated: true , completion: nil)
//            alert.view.tintColor = UIColor.black
//            alert.view.backgroundColor = UIColor.cyan  // change background color
//            alert.view.layer.cornerRadius = 25
//            
//        }
//        
//    }
//    
//    
//    
//    
//    
//    let mailComposeViewController = configureMailControler()
//    if MFMailComposeViewController.canSendMail() {
//        self.present( mailComposeViewController , animated: true , completion: nil)
//    } else {
//        showMailError()
//    }
//    
//}
