//
//  myview.swift
//  albrg
//
//  Created by mac on 4/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class myview: UIViewController , UITableViewDataSource , UITableViewDelegate {

   
    @IBOutlet weak var Tableview: UITableView!
    
    
    
    let arraysetminew =
        ["حول هذا التطبيق"
            ,"موسوعة التحاليل  الطبية"
            ,"موسوعة الأمراض "
            ,"دليل الإسعافات الأولية"
            ,"دليل الفيتامينات والمعادن"
            ,"دليل التطعيمات عند السفر للخارج"
            ,"عن مختبرات البرج الطبية"
            ,"مختبراتنا حول العالم"
            ,"حقوق و واجبات المرضى"
            ,"شركاؤنا"
            ,"مشاركة التطبيق"
            ,"تقييم التطبيق"
            ,"إغلاق التطبيق"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraysetminew.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "aaa", for: indexPath)
            let view1 = cell.viewWithTag(1) as! UIView
            
            let layer : CAGradientLayer = CAGradientLayer()
            layer.frame = CGRect( x:0,y:0,
                                  width:self.view.frame.size.width,
                                  height :self.view.frame.size.height )
            let firstcolor=UIColor.init(red: 186/255, green: 119/255, blue: 119/255, alpha: 1).cgColor
            let secontcolor = UIColor.init(red: 186/255, green: 85/255, blue: 85/255, alpha: 1).cgColor
            let secontcolorTOW = UIColor.init(red: 190/255, green: 44/255, blue: 44/255, alpha: 1).cgColor
            layer.startPoint = CGPoint(x:0,y:0)
            layer.endPoint   = CGPoint(x:1,y:0)
            layer.colors = [secontcolorTOW,secontcolor,firstcolor]
            
            layer.zPosition = -1
            view1.layer.addSublayer(layer)
            
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LableTableViewCell", for: indexPath) as! LableTableViewCell

        cell.mylable.text = arraysetminew[indexPath.row - 1]
        if indexPath.row == 1 || indexPath.row == 6 || indexPath.row == 10 || indexPath.row == 12 {
            cell.line_view.isHidden = false
        }else{
            cell.line_view.isHidden = true
        }
        return cell
    }
    
//    if indexPath.row == 1  {
//    cell.line_view.isHidden = false
//    }else if indexPath.row == 6{
//    cell.line_view.isHidden = false
//    }else if indexPath.row == 10{
//    cell.line_view.isHidden = false
//    }else if indexPath.row == 12{
//    cell.line_view.isHidden = false
//    }else{
//    cell.line_view.isHidden = true
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 170
        }
        
        let height = tableView.layer.frame.height / 13
        return 50
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    
        if indexPath.row == 1 {
        
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "photoViewController") as! photoViewController
            present(photoViewController1, animated: false, completion: nil)
        } else if indexPath.row == 2 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "t7aleldbeh") as! t7aleldbeh
            present(photoViewController1, animated: false, completion: nil)
           
        } else if indexPath.row == 3 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "moso3halamrad") as! moso3halamrad
            present(photoViewController1, animated: false, completion: nil)
           
        } else if indexPath.row == 4 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "moso3halamradViewController") as! moso3halamradViewController
            present(photoViewController1, animated: false, completion: nil)
            
        } else if indexPath.row == 5 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "fedamen") as! fedamen
            present(photoViewController1, animated: false, completion: nil)
        } else if indexPath.row == 6 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "altaat3emat") as! altaat3emat
            present(photoViewController1, animated: false, completion: nil)
           
        } else if indexPath.row == 7 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "m5tbrat_albrg_altbeh") as! m5tbrat_albrg_altbeh
            present(photoViewController1, animated: false, completion: nil)
            
            
        } else if indexPath.row == 8 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "m5tbrtna7olal3alm") as! m5tbrtna7olal3alm
            present(photoViewController1, animated: false, completion: nil)
        } else if indexPath.row == 9 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "oagbat_almrde") as! oagbat_almrde
            present(photoViewController1, animated: false, completion: nil)
           
        } else if indexPath.row == 10 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkina") as! shrkina
            present(photoViewController1, animated: false, completion: nil)
        } else if indexPath.row == 11 {
            if CheckInternet.Connection() {
            let items = [URL(string: "https://www.alabdelaziz.com/mobile_app_feed/alborg/news_for_app/share.html")!]
            let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
            present(ac, animated: true)
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
        } else if indexPath.row == 12 {
            if CheckInternet.Connection() {
                if let url = URL(string: "https://www.alabdelaziz.com/mobile_app_feed/alborg/news_for_app/rate.html") {
                    UIApplication.shared.open(url)
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
        } else if indexPath.row == 13 {
            let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "clos_in_app") as? clos_in_app
            self.present(calender!, animated: true)
            
//              let mainController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "clos_in_app")
//            
//            var myalert =  UIAlertController(title: nil,
//                                             message: nil ,
//                                             preferredStyle: .alert)
//
//            let imgTitle = UIImage(named:"img_exit_logo")
//            let imgViewTitle = UIImageView(frame: CGRect(x: 120, y: 10, width: 50, height: 50))
//            imgViewTitle.image = imgTitle
//            let label = UILabel(frame: CGRect(x: 55, y: 30, width: 180, height: 120))
//            label.font = UIFont(name: label.font.fontName, size: 14)
//            label.textAlignment = NSTextAlignment.center
//
//            label.text = "شكرا لاستخدامكم                                     تطبيق مختبرات البرج الطبيه                         هل أنت متأكد من إغلاق التطبيق؟"
//            label.textColor = UIColor(red: 0/255, green: 150/255, blue: 136/255, alpha:1)
//            label.numberOfLines = 3
//            myalert.view.addSubview(label)
//            //  myalert.message = UIAlertController(coder : CGRect(x: 150, y: 30, width: 50, height: 50))
//
//            var mybutt = UIAlertAction(title: "لا", style: .default) { (UIAlertAction) in
//            }
//            var mybutt2 = UIAlertAction(title:"نعم", style: .default) { (UIAlertAction) in
//                exit(0)
//            }
//            // hight
//            var height:NSLayoutConstraint = NSLayoutConstraint(item: myalert.view, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.height * 0.23)
//            myalert.view.addConstraint(height)
//            // width
//            //        var width:NSLayoutConstraint = NSLayoutConstraint(item: myalert.view, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.width * 9)
//            //        myalert.view.addConstraint(width)
//            mybutt2.setValue(UIColor(red: 190/255, green: 44/255, blue: 44/255, alpha:1), forKey: "titleTextColor")
//
//
//            mybutt.setValue(UIColor(red: 31/255, green: 103/255, blue: 61/255, alpha:1), forKey: "titleTextColor")
//            myalert.view.addSubview(imgViewTitle)
//
//            myalert.addAction(mybutt2)
//            myalert.addAction(mybutt)
//            present(myalert,animated: true,completion: nil)
            
        }
        
        
        
        
    }
    
    

    @IBOutlet weak var views: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
   
}











