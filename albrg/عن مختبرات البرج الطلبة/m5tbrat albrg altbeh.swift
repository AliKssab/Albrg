//
//  m5tbrat albrg altbeh.swift
//  albrg
//
//  Created by mac on 6/20/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import MessageUI
import EZLoadingActivity

class m5tbrat_albrg_altbeh: UIViewController , MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var videw: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupview ()
        
    }
    func makeAPhoneCall1()  {
        let url: NSURL = URL(string: "TEL://00966920004422")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
    func makeAPhoneCall2()  {
        let url: NSURL = URL(string: "TEL://00971800252674")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
    func makeAPhoneCall3()  {
        let url: NSURL = URL(string: "TEL://0096522233300")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
    func makeAPhoneCall4()  {
        let url: NSURL = URL(string: "TEL://0097317100088")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
    func makeAPhoneCall5()  {
        let url: NSURL = URL(string: "TEL://0097444818410")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
    func makeAPhoneCall6()  {
        let url: NSURL = URL(string: "TEL://0096824615157")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
    func makeAPhoneCall7()  {
        let url: NSURL = URL(string: "TEL://002491944")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
    func makeAPhoneCall8()  {
        let url: NSURL = URL(string: "TEL://00251912676073")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
    @IBAction func A(_ sender: UIButton) {
        
      self.makeAPhoneCall1()
    }
    
    @IBAction func B(_ sender: Any) {
        self.makeAPhoneCall2()
    }
    
    @IBAction func C(_ sender: Any) {
        self.makeAPhoneCall3()
    }
    
    @IBAction func D(_ sender: UIButton) {
        self.makeAPhoneCall4()
    }
    
    @IBAction func E(_ sender: UIButton) {
        self.makeAPhoneCall5()
    }
    
    @IBAction func F(_ sender: UIButton) {
        self.makeAPhoneCall6()
    }
    
    @IBAction func G(_ sender: UIButton) {
        self.makeAPhoneCall7()
    }
    
    @IBAction func H(_ sender: UIButton) {
        self.makeAPhoneCall8()
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
    
    @IBAction func MOK3(_ sender: UIButton) {
         if CheckInternet.Connection() {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MOK3") as? MOK3
        self.present(calender!, animated: true)
         } else {
            //    Alert InterNit
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
    
    
    @IBAction func mil(_ sender: Any) {
        
         if CheckInternet.Connection() {
        let mailComposeViewController = configureMailControler()
        if MFMailComposeViewController.canSendMail() {
            self.present( mailComposeViewController , animated: true , completion: nil)
        } else {
            showMailError()
        }
        } else {
            //    Alert InterNit
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
    
    func configureMailControler() -> MFMailComposeViewController {
        let milComposerVC = MFMailComposeViewController()
        milComposerVC.mailComposeDelegate = self
        milComposerVC.setToRecipients(["customercare@alborglaboratories.com"])
        milComposerVC.setSubject("رسالة من خلال تطبيق مختبرات البرج")
        
        
        
        
        
        milComposerVC.setMessageBody("", isHTML: false)
        
        return milComposerVC
    }
    
    func showMailError() {
        if CheckInternet.Connection() {
        let sendMailErrorAlert = UIAlertController(title: "cold note send emil", message: "your devicecould not send emil", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "ok", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present( sendMailErrorAlert , animated: true , completion: nil)
        } else {
            //    Alert InterNit
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
    
    @IBAction func facebook(_ sender: Any) {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "face") as? face
        self.present(calender!, animated: false)
    }
    
    
    @IBAction func tweter(_ sender: Any) {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tweter") as? tweter
        self.present(calender!, animated: false)
    }
    
    @IBAction func insta(_ sender: Any) {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "instgram") as? instgram
        self.present(calender!, animated: false)
    }
    
    @IBAction func youtyoup(_ sender: Any) {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "youtyuob") as? youtyuob
        self.present(calender!, animated: false)
    }
    
    @IBAction func link(_ sender: Any) {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "link") as? link
        self.present(calender!, animated: false)
    }
    
    @IBAction func googel(_ sender: Any) {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "googel") as? googel
        self.present(calender!, animated: false)
    }
    
    
}
