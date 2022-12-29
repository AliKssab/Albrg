//
//  ViewController.swift
//  albrg
//
//  Created by mac on 4/21/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AACarousel
import Kingfisher
import SDWebImage
import Alamofire
import SwiftyJSON
import WebKit


class ViewController: UIViewController, AACarouselDelegate, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource, WKUIDelegate  , UIWebViewDelegate {
    
    
    
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    
    
    
    
    
    @IBAction func rakbs7tkalshea(_ sender: UIButton) {
        if CheckInternet.Connection() {
            let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Rakb7altkalshea") as? Rakb7altkalshea
            self.present(calender!, animated: false)
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
    @IBAction func buttonebramgshty(_ sender: Any) {
         if CheckInternet.Connection() {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "1111") as? Bramg_shte
        self.present(calender!, animated: true)
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
    
    
    @IBAction func buttontalbzearamnzleh(_ sender: Any) {
         if CheckInternet.Connection() {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "2222") as? zearhmnzleh
        self.present(calender!, animated: true)
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
    
    @IBAction func buttonntaikalfhosat(_ sender: Any) {
         if CheckInternet.Connection() {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "3333") as? Nsaik_Shte
        self.present(calender!, animated: true)
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
    
    
    
   
     var restrictRotation:UIInterfaceOrientationMask = .portrait
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
        
    {
        return self.restrictRotation
    }
    //override var supportedInterfaceOrientations: UIInterfaceOrientationMask
   //
    
    @IBOutlet weak var skorlaa: UIScrollView!
    @IBOutlet weak var viewaa: UIView!
    
    @IBOutlet weak var WebViews: WKWebView!
    @IBOutlet weak var myTableview: UITableView!
    
    @IBOutlet weak var Secondcollection: UICollectionView!
    @IBOutlet weak var FirstCollection: UICollectionView!
    @IBOutlet weak var imag: AACarousel!
    var isloading = true
    var titleArray = [String]()
    let lable2 = ["التدخين", "إدمان الكحوليات" , "حرقان القلب", "سوءالتغذية" ,"فقدان الشهية " ,"طعام غير صحي" , "نقص الحديد", "الخمول والكسل","الضغوط النفسية", "العصبية/الغضب", "الأرق/وقلة النوم", "جرعة دواء ذائدة" , "ضعف/سقوط الشعر"]
    let lable1 = [
        "داء السكري" ,"ضغط الدم","فقر الدم","الغده الدرقية","السرطان","أمراض القلب","أمراض الكلي","أمراض الكبد","التهاب الكبد","أمراض العظام","أمراض المفاصل","مشاكل الهضم","الحمى","الصفراء/اليرقان","خلل الهرمونات","العدوى","الامراض الجنسية","نقص الفيتامينات","السمنة","الحمل"
    ]
    
    let myimag2: [UIImage] = [
        UIImage(named: "smoking")! ,
        UIImage(named: "alcoholism")! ,
        UIImage(named: "heart_burn")! ,
        UIImage(named: "poor_nutrition")! ,
        UIImage(named: "poor_eating")! ,
        UIImage(named: "junk_food")! ,
        UIImage(named: "low_iron")! ,
        UIImage(named: "lazy")! ,
        UIImage(named: "stress")! ,
        UIImage(named: "anger")! ,
        UIImage(named: "insomnia")! ,
        UIImage(named: "medicine_overdose")! ,
        UIImage(named: "hairloss")!
    ]
    
    let myimag: [UIImage] = [
        UIImage(named: "diabetes")! ,
        UIImage(named: "hypertension")! ,
        UIImage(named: "anemia")! ,
        UIImage(named: "thyroid")! ,
        UIImage(named: "cancer")! ,
        UIImage(named: "heart")! ,
        UIImage(named: "kidney")! ,
        UIImage(named: "liver")! ,
        UIImage(named: "hepatitis")! ,
        UIImage(named: "bone")! ,
        UIImage(named: "joints")! ,
        UIImage(named: "digestion")! ,
        UIImage(named: "fever")! ,
        UIImage(named: "jaundice")! ,
        UIImage(named: "hormones")! ,
        UIImage(named: "infections")! ,
        UIImage(named: "std")! ,
        UIImage(named: "vitamins")! ,
        UIImage(named: "obesity")! ,
        UIImage(named: "pregnancy")!
    ]
    
    var tempImages: [Int: UIImage] = [:]
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    //    override func loadView() {
    //        let webConfiguration = WKWebViewConfiguration()
    //        WebViews = WKWebView(frame: .zero, configuration: webConfiguration)
    //        WebViews.uiDelegate = self
    //        view = WebViews
    //    }
    var imagcolection = UIImage()
    var namecolection = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view ()
        Selter()
      
        
        GetText(url: "https://www.alabdelaziz.com/mobile_app_feed/alborg/news_for_app/1/title.txt")
    }
//    @IBAction func sh5smrdekbnfsk(_ sender: UIButton) {
//        
//        let secondViewController =
//            self.storyboard?.instantiateViewController(withIdentifier: "sh5smrdek")
//        self.navigationController?.pushViewController(secondViewController!, animated: true)
//    }
    
    @IBAction func sietminew(_ sender: UIButton) {
        revealViewController()?.rightRevealToggle(animated: true)
    }
    @IBAction func linkalshrka(_ sender: Any) {
        if CheckInternet.Connection() {
            if let url = URL(string: "https://www.alabdelaziz.com") {
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
    }
    func view () {
        
        if let vc = self.revealViewController() {
            let btn = UIButton(type: .custom)
            btn.setBackgroundImage(UIImage(named: "side menu icon"), for: .normal)
            btn.addTarget(vc, action: #selector(vc.rightRevealToggle(_:)), for: .touchUpInside)
            btn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
            
            let rightButton = UIBarButtonItem(customView: btn)
            btn.clipsToBounds = true
            navigationItem.rightBarButtonItem?.width = 20
            navigationItem.rightBarButtonItem = rightButton
            vc.rightViewRevealWidth = 300
            rightButton.setBackgroundImage(UIImage(named: "logo"), for: .normal, barMetrics: .compact)
            
            view.addGestureRecognizer(vc.panGestureRecognizer())
           view.addGestureRecognizer(vc.tapGestureRecognizer())
        }
    }
    
    
    func Selter() {
        let pathArray = ["slider_01", "slider_02", "slider_03", "slider_04", "slider_05"]
        titleArray = ["", "", ""]
        imag.delegate = self
        imag.setCarouselData(paths: pathArray,  describedTitle: titleArray, isAutoScroll: true, timer: 5.0, defaultImage: "slider_01")
        //optional methods
        imag.setCarouselOpaque(layer: true, describedTitle: true, pageIndicator: true)
    }
    
    
    
    
    
    
    
    
    
    
    

    func GetText(url: String) {
        Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).validate(statusCode:200..<300).responseJSON { (result) in
            
            print(result.response?.statusCode)
            print(result.data)
            
            let json = try? JSON(data: result.data!)
            
            //   let lbl = try? JSON(data: result.data!)
            
            let data = Data(base64Encoded: result.data!)
            print(data)
            print( "lbl == " , json)
        }
    }
    
    //    sleder
    func downloadImages(_ url: String, _ index: Int) {
        //here is download images area
        let imageView = UIImageView()
        //        imageView.kf.setImage(with: URL(string: url)!, placeholder: UIImage.init(named: "defaultImage"), options: [.transition(.fade(0))], progressBlock: nil, completionHandler: { (downloadImage, error, cacheType, url) in
        //            self.carouselView.images[index] = downloadImage!
        //        })
    }
    
    func didSelectCarouselView(_ view: AACarousel ,_ index: Int) {
        //        let alert = UIAlertView.init(title:"Alert" , message: titleArray[index], delegate: self, cancelButtonTitle: "OK")
        //        alert.show()
        //startAutoScroll()
        //stopAutoScroll()
    }
    
    //optional method (show first image faster during downloading of all images)
    func callBackFirstDisplayView(_ imageView: UIImageView, _ url: [String], _ index: Int) {
       
    }
    
    func startAutoScroll() {
        //optional method
        imag.startScrollImageView()
    }
    
    func stopAutoScroll() {
        //optional method
        imag.stopScrollImageView()
    }
    
    
    @objc func sherbutton(_ sender : UIButton){
        let text = "https://www.alabdelaziz.com/mobile_app_feed/alborg/news_for_app/\(sender.tag+1)/link.txt"
        self.GetData(url: text)
    }
    
    func GetData(url: String) {
        Alamofire.request(url, method: .get, parameters: [:], encoding: URLEncoding.default, headers: nil).validate(statusCode:200..<300).response(completionHandler: { (result) in
            if result.response?.statusCode == 200 {
                let link = "https://" + String(data: result.data!, encoding: .utf8)!
                
                // set up activity view controller
                let textToShare = [ link ]
                let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
                activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
                
                // exclude some activity types from the list (optional)
                activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
                
                // present the view controller
                self.present(activityViewController, animated: true, completion: nil)
            } else {
            }
        })
    }
    
    //    اختيار الفحوصات حسب الحاله المرضيه
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.FirstCollection {
            return lable1.count
        } else {
            return lable2.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.FirstCollection {
            let cell : FirestCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath) as! FirestCollectionViewCell
            cell.lable.text = lable1[indexPath.item]
            cell.imag.image = myimag[indexPath.item]
            return cell
        } else {
            let cell :SecondCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SecondCollectionViewCell
            cell.lable2.text = lable2[indexPath.item]
            cell.imag2.image = myimag2[indexPath.item]
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == FirstCollection {
            var didset = indexPath.row
        let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "didtabelview") as!ViewControllera
           
            nextVC.inits = didset
            
        present(nextVC, animated: true, completion: nil)
            
            
            
            
        } else {
            let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondcollection") as!secondcollection
             var didsets = indexPath.row
              nextVC.inits = didsets
             present(nextVC, animated: true, completion: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 340
    }
    
//    var texts: [String] = []
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
//        cel.myimageview.image = nil
        if CheckInternet.Connection() {
            table.item = "\(indexPath.row+1)"
            cel.sherbutton.tag = indexPath.row
            cel.sherbutton.addTarget(self, action: #selector(sherbutton(_:)), for: .touchUpInside)
            DispatchQueue.global(qos: .userInitiated).async {
                if self.isloading{
                    let yourImage: UIImage = UIImage(named: "news_loading")!
                    
                       DispatchQueue.main.async {
                    cel.myimageview.image = yourImage
                     }
                }
                let count = indexPath.row + 1
                let url = URL(string: "https://www.alabdelaziz.com/mobile_app_feed/alborg/news_for_app/\(count)/image.jpg")
                //  cel.myimageview?.sd_setImage(with: url, completed: nil)
                
                if let image = self.tempImages[count] {
                     DispatchQueue.main.async {
                    cel.myimageview.image = image
                    self.isloading = false
                    }
                } else {
                    cel.myimageview.sd_setImage(with: url, placeholderImage: UIImage(named: "news_loading"), options: [.refreshCached]) {
                        [weak self] (image, error, _, _) in
                        guard let image = image else { return }
                        
                        self?.tempImages[count] = image
                    }
                }
                
                let myURLString1 = "https://www.alabdelaziz.com/mobile_app_feed/alborg/news_for_app/\(indexPath.row+1)/title.txt"
                let myURL1 = URL(string: myURLString1)
                
                do {
                    let myHTMLString = try String(contentsOf: myURL1!, encoding: .utf8)
                   
                    
                      DispatchQueue.main.async {
                    cel.mytext.text = myHTMLString
                       }
                   
                } catch let error {
                    print("Error: \(error)")
                }
                
                let myURLString = "https://www.alabdelaziz.com/mobile_app_feed/alborg/news_for_app/\(count)/date.txt"
                // print(myURLString)
                
                let myURL = URL(string: myURLString)
                do {
                    let myHTMLString = try String(contentsOf: myURL!, encoding: .utf8)
                    // print(myHTMLString)
                    
                    let formatter = DateFormatter()
                    formatter.dateFormat = "yyyy-MM-dd"
                    
                    // read input date string as NSDate instance
                    if let date = formatter.date(from: myHTMLString) {
                        // set locale to "ar_DZ" and format as per your specifications
                        formatter.locale = NSLocale(localeIdentifier: "ar") as Locale
                        formatter.dateFormat = "yyyy-MM-dd"
                        let outputDate = formatter.string(from: date)
                         DispatchQueue.main.async {
                        cel.mylable.text = outputDate
                        }
                        
                    }
                    
                } catch let error {
                    print("Error: \(error)")
                }
            }
            
        } else {
            let yourImage: UIImage = UIImage(named: "news_no_internet")!
            cel.myimageview.image = yourImage
            cel.mylable.text = "  "
            cel.mytext.text = "الهاتف غير متصل بالإنترنت"
        }
        
      

        return cel
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if CheckInternet.Connection() {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "WebViewControllerS") as! WebViewController
            secondViewController.url = "https://www.alabdelaziz.com/mobile_app_feed/alborg/news_for_app/\(indexPath.row+1)/link.txt"
            
            self.navigationController?.pushViewController(secondViewController, animated: true)
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
    
    @IBAction func Refresh(_ sender: UIButton) {
        if CheckInternet.Connection() {
            DispatchQueue.main.async {
                self.isloading = true
                self.tempImages = [:]
                self.myTableview.reloadData()
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
    
    @IBAction func sh5smredk(_ sender: UIButton) {
         if CheckInternet.Connection() {
        let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "sh5smrdek") as! sh5smrdek
        present(photoViewController1, animated: false, completion: nil)
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
}






//pod 'SwiftyGif'
//import SwiftyGif
//
//do {
//    let gif = try UIImage(gifName: "MyImage.gif")
//    let imageview = UIImageView(gifImage: gif, loopCount: 3) // Use -1 for infinite loop
//    imageview.frame = view.bounds
//    view.addSubview(imageview)
//} catch error {
//    print(error)
////}




//
//
//
//var myalert =  UIAlertController(title: nil,
//                                 message: nil ,
//                                 preferredStyle: .alert)
//
//let imgTitle = UIImage(named:"img_exit_logo")
//let imgViewTitle = UIImageView(frame: CGRect(x: 120, y: 10, width: 50, height: 50))
//imgViewTitle.image = imgTitle
//let label = UILabel(frame: CGRect(x: 55, y: 30, width: 180, height: 120))
//label.font = UIFont(name: label.font.fontName, size: 14)
//label.textAlignment = NSTextAlignment.center
//
//label.text = "شكرا لاستخدامكم                                     تطبيق مختبرات البرج الطبيه                         هل أنت متأكد من إغلاق التطبيق؟"
//label.textColor = UIColor(red: 0/255, green: 150/255, blue: 136/255, alpha:1)
//label.numberOfLines = 3
//myalert.view.addSubview(label)
////  myalert.message = UIAlertController(coder : CGRect(x: 150, y: 30, width: 50, height: 50))
//
//var mybutt = UIAlertAction(title: "لا", style: .default) { (UIAlertAction) in
//}
//var mybutt2 = UIAlertAction(title:"نعم", style: .default) { (UIAlertAction) in
//    exit(0)
//}
//// hight
//var height:NSLayoutConstraint = NSLayoutConstraint(item: myalert.view, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.height * 0.23)
//myalert.view.addConstraint(height)
//// width
////        var width:NSLayoutConstraint = NSLayoutConstraint(item: myalert.view, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.width * 9)
////        myalert.view.addConstraint(width)
//mybutt2.setValue(UIColor(red: 190/255, green: 44/255, blue: 44/255, alpha:1), forKey: "titleTextColor")
//
//
//mybutt.setValue(UIColor(red: 31/255, green: 103/255, blue: 61/255, alpha:1), forKey: "titleTextColor")
//myalert.view.addSubview(imgViewTitle)
//
//myalert.addAction(mybutt2)
//myalert.addAction(mybutt)
//present(myalert,animated: true,completion: nil)
