//
//  m5tbrtna7olal3alm.swift
//  albrg
//
//  Created by mac on 6/21/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import DropDown

class m5tbrtna7olal3alm : UIViewController , UITableViewDataSource  ,  UITableViewDelegate {
    
//    let citty = ["cairo","assut","aswun"]
//    let cario = ["hdyq qoba" , "sda" , "asd"]
//    let assut = ["as","asds","sda"]
//    let aswun = ["wqe","wqe","awqewq"]
//    var reigon : [Any] = []
    
    // var numofcell : Int = 0
    let ggg : NSMutableDictionary = [ "البلد":["المحافظات","c","d"]  , "maca":["a","b","c","d"] ]
    
    @IBAction func sadadf(_ sender: UIButton) {
         self.dismiss(animated: false, completion: nil)
        print("soso")
    }
    
    
    let sss : NSMutableDictionary = [ "المحافظة":["حي النهضه","",""]]
    
    
    let www : NSMutableDictionary = [ "7yy":["0100232","3non"]  , "maca":["a","b","c","d"] ]
    
    
    
    var Z :Int = 0
    var x : Int = 0
    @IBOutlet weak var country: UIButton!
    @IBOutlet weak var city: UIButton!
    let dropDown = DropDown()
    @IBOutlet weak var tabledata: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       // reigon = [cario , assut , aswun]
//        tabledata == height for header in section return 0.001
        
        print(  "sda" , ggg.value(forKey: "cario"))
        
        
        dropDown.anchorView = country
        dropDown.anchorView = city
        tabledata.delegate = self
        tabledata.dataSource = self
        city.layer.cornerRadius = 10
        country.layer.cornerRadius = 10
//        tabledata.isHidden = true
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
        
    }
    
    func share(data:Any){
        let activityVC = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    
    let lat = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,26,45,56,33,325,5245,52,52,52,52,2545,4535,54,53,432,523,523,523,532,5,45]
    let lobng = [10,20,30,40,50,60,70,21,31,312,312,31,312,14,1453,4234,432,432,542,14,67,58,67,658,467,74,4574,457,546,63,253,525,5235,525,523]
 
    
  var ll = 14324
    
    var q: String = ""
    var w: String = ""
    var titlesher = ""
    var loactionsher = ""
    var phonesher = ""
    
    
 let titlesherA = ["مختبر جدة - بنى مالك",
                   "مختبر جدة - حى النهضة",
                   "مختبر جدة - السلامة",
                   "مختبر جدة - حى الشرفية",
                   "مختبر جدة - الثغر",
                   "مختبر جدة - الثغر"
    ,"مختبر جدة - النهضة"
    ,"مختبر جدة - السامر"
    ,"مختبر الرياض - الروضة"
    ,"مختبر الرياض - العليا",
                   "مختبر الرياض - المصيف",
                   "مختبر الرياض - الريان",
                   "مختبر الرياض - قرطبة",
                   "مختبر مكة - النسيم",
                   "مختبر الدمام",
                   "مختبر الدمام 2"
    ,"مختبر الخبر"
    ,"مختبر حائل"
    ,"مختبر الطائف"
    , "مختبر خميس مشيط"
    ,"مختبر خميس مشيط",
   "مختبر جازان" ,
   "مختبر ينبع" ,
  "مختبر ينبع"  ,
   "مختبر أبها" ,
 "مختبر دبى - جميرة"   ,
  "مختبر دبى - ديرة"  ,
  "مختبر رأس الخيمة"  ,
  "مختبر المنامة"  ,
  "مختبر الدوحة - مدينة خليفة"  ,
 "مختبر الدوحة - الوعب"   ,
   "مختبر الكويت - الجابرية" ,
  "مختبر مسقط"  ,
 "مختبر الخرطوم" ,
"مختبر أديس أبابا" ,
    ]
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell :m5tbratnaTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Mycell", for: indexPath) as! m5tbratnaTableViewCell
            cell.delegate = self
        

//        cell.shear.addTarget(self, action: #selector(sher(_:)), for: .touchUpInside)
        cell.view.layer.cornerRadius = 10
        tableView.backgroundColor = UIColor.clear
        cell.backgroundColor = UIColor.clear
        
   
        if x == 20  {
            print("dfghjk")
  //            tabledata.isHidden = true
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر جدة - بنى مالك"
                
                
                cell.loaction.text = "شارع فلسطين ، بنى مالك ، أعلى مكتبة جرير ، 23226 جدة"
                cell.phone.text = "الهاتف: 00966920004422 "
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat = 21.533667
                cell.lon = 39.203464
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.rakam =  00966920004422
                

            }
            else if indexPath.row == 1
            {
                cell.title.text = "مختبر جدة - حى النهضة"
                cell.loaction.text = "حى النهضة ، 8136 جدة"
                cell.phone.text = "الهاتف : 00966920004422"
                cell.lat = 21.609482
                cell.lon = 39.12057
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.rakam =  00966920004422
                 ll = 2
            }
            else if indexPath.row == 2
            {
                cell.title.text = "مختبر جدة - السلامة"
                cell.loaction.text = "طريق الأمير سلطان ، السلامة ، 23437 جدة"
                cell.phone.text = "الهاتف : 00966920004422"
                cell.lat = 21.589111
                cell.lon = 39.144213
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.rakam =  00966920004422
                 ll = 3
            }
            else if indexPath.row == 3
            {
                cell.title.text = "مختبر جدة - حى الشرفية"
                cell.loaction.text = "حى الشرفية ، 7451 أبو بكر الصديق ، 2265 جدة"
                cell.phone.text = "الهاتف : 00966920004422"
                cell.lat = 21.523775
                cell.lon = 39.181907
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.rakam =  00966920004422
                 ll = 4
            }
            else if indexPath.row == 4
            {
                cell.title.text = "مختبر جدة - الثغر"
                cell.loaction.text = "طريق مكة القديم ، الثغر ، الطابق الأول ، 22331 جدة"
                cell.phone.text = "الهاتف :  00966920004422"
                cell.lat = 21.479167
                cell.lon = 39.220108
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            }
            else if indexPath.row == 5
            {
                cell.title.text = "مختبر جدة - النهضة"
                cell.loaction.text = "طريق الملك عبدالعزيز الفرعي ، النهضة ، سنتر إليت الشاطئ ، الطابق الأول ، 8770 جدة"
                cell.phone.text = "الهاتف :  00966920004422"
                cell.lat = 21.611639
                cell.lon = 39.120029
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            }
            else if indexPath.row == 6
            {
                cell.title.text = "مختبر جدة - السامر"
                cell.loaction.text = "شارع الأجواد ، السامر ، 23462 جدة"
                cell.phone.text = "الهاتف :  00966920004422"
                cell.lat = 21.593099
                cell.lon = 39.238512
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            }
            
        }
        if x == 21 {
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر الرياض - الروضة"
                cell.loaction.text = "شارع خالد بن الوليد ، الروضة ، أعلى مكتبة الشرق ، 13214 الرياض"
                cell.phone.text = "الهاتف :00966920004422 "
                cell.lat = 24.754514
                cell.lon = 46.768279
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            } else if indexPath.row == 1 {
                cell.title.text = "مختبر الرياض - العليا"
                cell.loaction.text = "شارع العليا ، أمام سوق الكمبيوتر ، 12221 الرياض"
                cell.phone.text = "الهاتف :  00966920004422"
                cell.lat = 24.68089
                cell.lon = 46.692148
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            } else if indexPath.row == 2 {
                cell.title.text = "مختبر الرياض - المصيف"
                cell.loaction.text = "حي المصيف ، تقاطع طريق الإمام سعود مع طريق الملك عبد العزيز ، 12465 الرياض"
                cell.phone.text = "الهاتف :  00966920004422"
                cell.lat = 21.593099
                cell.lon = 39.238512
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            } else if indexPath.row == 3 {
                cell.title.text = "مختبر الرياض - الريان"
                cell.loaction.text = "طريق عثمان بن عفان ، النزهة ، 12474 الرياض"
                cell.phone.text = "الهاتف :  00966920004422"
                cell.lat = 24.767411
                cell.lon = 46.712806
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            } else if indexPath.row == 4 {
                cell.title.text = "مختبر الرياض - قرطبة"
                cell.loaction.text = "2 شارع خالد بن الوليد ، قرطبة ، شارع دمام ، أعلى بيتزا هت ، 13244 الرياض"
                cell.phone.text = "الهاتف :  00966920004422"
                cell.lat = 24.800579
                cell.lon = 46.739449
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            } else if indexPath.row == 5 {
                cell.title.text = "مختبر الرياض - الصحافة"
                cell.loaction.text = "الصحافة ، 13321 الرياض"
                cell.phone.text = "الهاتف :  00966920004422"
                cell.lat = 24.807422
                cell.lon = 46.648779
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            }
            
        }
            if x == 22 {
                
                if indexPath.row == 0 {
                    cell.title.text = "مختبر مكة - النسيم"
                    cell.loaction.text = "طريق مزدلفة ، النسيم ، 24242 مكة"
                    cell.phone.text = "الهاتف :00966920004422 "
                    cell.lat = 21.383168
                    cell.lon = 39.870745
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                    cell.rakam =  00966920004422
                }
            
            }
            if x == 23 {
                
                
                if indexPath.row == 1 {
                    cell.title.text = "مختبر الدمام"
                    cell.loaction.text = "طريق الأمير محمد بن فهد ، مركز الحسانى التجارى ، الدور الثانى ، 32233 الدمام"
                    cell.phone.text = "الهاتف :  00966920004422"
                    cell.lat = 26.436734
                    cell.lon = 50.118288
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                     cell.rakam =  00966920004422
                } else if indexPath.row == 0 {
                    cell.title.text = "مختبر الدمام 2"
                    cell.loaction.text = "شارع الملك عبدالعزيز ، العزيزية ، 32424 الدمام"
                    cell.phone.text = "الهاتف :00966920004422 "
                    cell.lat = 26.452569
                    cell.lon = 50.070895
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                     cell.rakam =  00966920004422
                }
                
                
              
  
            }
                
            
            
            
            
            if x == 24 {
                
                
                
                if indexPath.row == 0 {
                    cell.title.text = "مختبر الخبر"
                    cell.loaction.text = "طريق الملك عبد العزيز ، مبنى الخزيم ، الدور الثانى ، بجوار الخطوط الجوية الكويتية ، الخبر"
                    cell.phone.text = "الهاتف :00966920004422 "
                    cell.lat = 26.295542
                    cell.lon = 50.207848
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                     cell.rakam =  00966920004422
                }
                
            }
            
            
            
            if x == 25 {
                
                
                
                if indexPath.row == 0 {
                    cell.title.text = "مختبر حائل"
                    cell.loaction.text = "الأمير سلطان بن عبد العزيز ، الوسيطاء ، 55421 حائل"
                    cell.phone.text = "الهاتف :00966920004422 "
                    cell.lat = 27.501353
                    cell.lon = 41.677308
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                     cell.rakam =  00966920004422
                }
                
            }
            
            if x == 26 {
                
                
                
                if indexPath.row == 0 {
                    cell.title.text = "مختبر الطائف"
                    cell.loaction.text = "شهار ، 26513 الطائف"
                    cell.phone.text = "الهاتف :00966920004422 "
                    cell.lat = 21.254597
                    cell.lon = 40.410608
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                     cell.rakam =  00966920004422
                }
                
            }
            
            if x == 27 {
                
                
                
                if indexPath.row == 0 {
                    cell.title.text = "مختبر خميس مشيط"
                    cell.loaction.text = "المذاب , تقاطع صلاح الدين مع الإمام محمد بن سعود , 62431 خميس مشيط"
                    cell.phone.text = "الهاتف :00966920004422 "
                    cell.lat = 18.297475
                    cell.lon = 42.708196
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                     cell.rakam =  00966920004422
                }
                
            }
            
            if x == 28{
                
                
                
                if indexPath.row == 0 {
                    cell.title.text = "مختبر عنيزة"
                    cell.loaction.text = "طريق الملك عبدالعزيز ، الشريمية ، أعلى سعد الدين للحلويات ، 56219 عنيزة"
                    cell.phone.text = "الهاتف :00966920004422 "
                    cell.lat = 26.09782
                    cell.lon = 43.984668
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                     cell.rakam =  00966920004422
                }
                
            }
            
            
            if x == 29 {
                
                
                
                if indexPath.row == 0 {
                    cell.title.text = "مختبر جازان"
                    cell.loaction.text = "جازان 82812"
                    cell.phone.text = "الهاتف :00966920004422 "
                    cell.lat = 16.92336
                    cell.lon = 42.554404
                    cell.location =  cell.loaction.text
                    cell.phone1 =   cell.phone.text
                    cell.title1 =  cell.title.text
                    cell.lat1 = cell.lat
                    cell.lon1 = cell.lon
                     cell.rakam =  00966920004422
                }
                
            }
        
        if x == 30 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر ينبع"
                cell.loaction.text = "طريق على بن أبى طالب ، 46424 ينبع"
                cell.phone.text = "الهاتف :00966920004422 "
                cell.lat = 24.089069
                cell.lon = 38.048336
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            }
            
        }
        
        
        if x == 31 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر أبها"
                cell.loaction.text = "طريق الملك عبد العزيز ، الخالدية ، ٦٢٥٤١أبها"
                cell.phone.text = "الهاتف :00966920004422 "
                cell.lat = 18.223938
                cell.lon = 42.488533
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam =  00966920004422
            }
            
        }
        
        
        if x == 32 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر دبى - جميرة"
                cell.loaction.text = "جميرة ، فيلا رقم 1065 ، أم سقيم 2 ، طريق الوصل ، دبى"
                cell.phone.text = "الهاتف :00971800252674 "
                cell.lat = 25.141747
                cell.lon = 55.206219
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.rakam = 00971800252674
            } else  if indexPath.row == 1 {
                cell.title.text = "مختبر دبى - ديرة"
                cell.loaction.text = "ديرة ، طريق أبو بكر الصديق ، دبى"
                cell.phone.text = "الهاتف :00971800252674 "
                cell.lat = 25.265686
                cell.lon = 55.329818
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.rakam = 00971800252674

            }
            
        }
        
        if x == 33 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر أبو ظبى - العين"
                cell.loaction.text = "شارع خليفة بن زايد ، وحدة رقم 201 ، مبنى بن سيديره ، العين ، أبو ظبى"
                cell.phone.text = "الهاتف :00971800252674 "
                cell.lat = 24.221414
                cell.lon = 55.759853
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.rakam = 00971800252674

            }
            
        }
        
        if x == 34 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر الشارقة"
                cell.loaction.text = "طريق ساحل الشارقة ، بلوك سى ، الشارقة"
                cell.phone.text = "الهاتف :00971800252674 "
                cell.lat = 25.34422
                cell.lon = 55.386145
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.rakam = 00971800252674

            }
            
        }
        
        if x == 35 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر رأس الخيمة"
                cell.loaction.text = "طريق خزام ، الكرم ، أبراج النخيل ، أمام مول رأس الخيمة"
                cell.phone.text = "الهاتف :00971800252674 "
                cell.lat = 25.774311
                cell.lon = 55.961163
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.rakam = 00971800252674

            }
            
        }
        
        if x == 37 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر المنامة"
                cell.loaction.text = "طريق 66 ، فيلا 70 ، بلوك 360 ، المنامة"
                cell.phone.text = "الهاتف :0097317100088 "
                cell.lat = 26.207882
                cell.lon = 50.56657
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                cell.rakam = 0097317100088
            }
            
        }
        
        if x == 38 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر الدوحة - مدينة خليفة"
                cell.loaction.text = "طريق الدوحة السريع ، فيلا رقم 4 ، 5207 الدوحة"
                cell.phone.text = "الهاتف :0097444818410 "
                cell.lat = 25.328362
                cell.lon = 51.466605
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                   cell.rakam =  0097444818410
            } else   if indexPath.row == 1 {
                cell.title.text = "مختبر الدوحة - الوعب"
                cell.loaction.text = "311 شارع الوعب ، 5207 الدوحة"
                cell.phone.text = "الهاتف :0097444472224 "
                cell.lat = 25.266611
                cell.lon = 51.46956
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam = 0097444472224
            }
            
        }
        
       
        if x == 36 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر الكويت - الجابرية"
                cell.loaction.text = "شرق ، بلوك 3 ، مبنى 1 ، شارع بن مصباح ، برج أوتاد ، 46302 الكويت"
                cell.phone.text = "الهاتف :0096522233300 "
                cell.lat = 29.322283
                cell.lon = 48.017521
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.lat1 = cell.lat
                cell.lon1 = cell.lon
                 cell.rakam = 0096522233300
            }
            
        }
        if x == 39 {
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر مسقط"
                cell.loaction.text = "مسقط - حي بوشار ، شارع 18 نوفمبر ، مبنى 15"
                cell.phone.text = "الهاتف :0096891406661 "
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.googlemap.isHidden = true
                cell.shear.isHidden = true
                cell.locatonbutt.isHidden = true
                 cell.rakam = 0096891406661
           
            }
            
        }
        
        
        if x == 40{
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر الخرطوم"
                cell.loaction.text = "الخرطوم - شارع الملك عبد العزيز ، شمال السفارة السورية"
                cell.phone.text = "الهاتف :00249183560667 "
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.googlemap.isHidden = true
                cell.shear.isHidden = true
                cell.locatonbutt.isHidden = true
                cell.rakam = 00249183560667
                
            }
            
        }
        
        
        if x == 41{
            
            
            
            if indexPath.row == 0 {
                cell.title.text = "مختبر أديس أبابا"
                cell.phone.text = "الهاتف :00251912676073 "
                cell.location =  cell.loaction.text
                cell.phone1 =   cell.phone.text
                cell.title1 =  cell.title.text
                cell.googlemap.isHidden = true
                cell.shear.isHidden = true
                cell.locatonbutt.isHidden = true
                cell.rakam = 00251912676073 
            }
      
        }
        
        
             return cell
        }
    
  
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if x == 20
        {
            return 7
        }
        else if x == 21
        {
            return 6
            
        }
        else if x == 23 {
            return 2
        } else if x == 38 {
            return 2
        }
        else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        
        return headerView
    }
    private var selecetdValue: String?
    @IBAction func selectcountry(_ sender: Any) {
        dropDown.dataSource = [
            "السعودية",
            "الإمارات"
            ,"الكويت"
            ,"البحرين"
            ,"قطر"
            ,"عمان"
            ,"السودان"
            ,"إثيوبيا" ]
        dropDown.direction = .any
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.selecetdValue = item
            self.country.setTitle(item, for: .normal)
            if item ==  "السعودية" {
               
                self.Z = 2
                self.city.setTitle("فضلااختر مدينتك", for: .normal)
                self.city.isHidden = false
                self.tabledata.isHidden = true
                
            } else if item == "الإمارات" {
                self.Z = 3
                self.city.setTitle("فضلااختر مدينتك", for: .normal)
                self.city.isHidden = false
                  self.tabledata.isHidden = true
            } else if item ==  "الكويت" {
                self.Z = 4
                self.city.setTitle("فضلا اختر مدينتك", for: .normal)
                self.city.isHidden = false
                  self.tabledata.isHidden = true
            } else if item == "البحرين" {
                self.Z = 5
                self.city.setTitle("فضلا اختر مدينتك", for: .normal)
                self.city.isHidden = false
                  self.tabledata.isHidden = true
            } else if item ==  "قطر" {
                self.Z = 6
                 self.city.setTitle("فضلا اختر مدينتك", for: .normal)
                self.city.isHidden = false
                  self.tabledata.isHidden = true
            } else if item ==  "عمان" {
                self.Z = 7
                self.city.setTitle("فضلا اختر مدينتك", for: .normal)
                self.city.isHidden = false
                  self.tabledata.isHidden = true
            } else if item ==  "السودان" {
                self.Z = 8
                self.city.setTitle("فضلا اختر مدينتك", for: .normal)
                self.city.isHidden = false
                  self.tabledata.isHidden = true
            } else if item ==  "إثيوبيا" {
                self.Z = 9
                self.city.setTitle("فضلا اختر مدينتك", for: .normal)
                self.city.isHidden = false
                  self.tabledata.isHidden = true
                
            }
            
        }
        
        
        dropDown.show()
        dropDown.dismissMode = .automatic
        
        
    }
    
    @IBAction func selectcity(_ sender: Any) {
        if Z == 2 {
            
            dropDown.dataSource = [ "جدة", "الرياض" , "مكة" , "الدمام" , "الخبر" , "حائل" , "الطائف" , "خميس مشيط"
                , "عنيزة" , "جازان" , "ينبع" , "أبها"]
            
        } else if Z == 3 {  dropDown.dataSource = [ "دبي " , "أبو ظبي" ,"الشارقة","رأس الخيمة"]
            
        } else if Z == 4 { dropDown.dataSource = ["الكويت"]
            
        } else if Z == 5 { dropDown.dataSource = ["المنامة"]
            
        } else if Z == 6 { dropDown.dataSource = ["الدوحة"]
            
        } else if Z == 7 {  dropDown.dataSource = ["مسقط"]
            
        } else if Z == 8 {  dropDown.dataSource = ["الخرطوم"]
            
        } else if Z == 9 { dropDown.dataSource = ["أديس أبابا"]
            
        }
        
        dropDown.direction = .bottom
        
        // Action triggered on selection
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            
            self.selecetdValue = item
            
            //            self.a5tardoltek11.setTitle(item, for: .normal)
            self.city.setTitle(item, for: .normal)
            if item == "جدة"{
                
                self.x = 20
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else   if item == "الرياض"{
                self.x = 21
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else   if item == "مكة"{
                self.x = 22
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else if item == "الدمام"{
                self.x = 23
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else if item == "الخبر"{
                self.x = 24
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else if item == "الطائف"{
                self.x = 26
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else  if item == "حائل"{
                self.x = 25
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else  if item == "خميس مشيط"{
                self.x = 27
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            
            else  if item == "عنيزة"{
                self.x = 28
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else  if item == "جازان"{
                self.x = 29
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else  if item == "ينبع"{
                self.x = 30
                print(self.x)
                self.tabledata.reloadData()
                self.tabledata.isHidden = false
            }
            else  if item == "أبها" {
                self.x = 31
                print(self.x)
                self.tabledata.reloadData()
                 self.tabledata.isHidden = false

            }     else  if item ==  "دبي "  {
                self.x = 32
                print(self.x)
                self.tabledata.reloadData()
                 self.tabledata.isHidden = false
                
            }     else  if item ==  "أبو ظبي"  {
                self.x = 33
                print(self.x)
                self.tabledata.reloadData()
                 self.tabledata.isHidden = false
                
            }   else  if item ==  "الشارقة"  {
                self.x = 34
                print(self.x)
                 self.tabledata.isHidden = false
                self.tabledata.reloadData()
                
            }   else  if item ==  "رأس الخيمة"  {
                self.x = 35
                 self.tabledata.isHidden = false
                print(self.x)
                self.tabledata.reloadData()
                
            } else  if item == "الكويت" {
                self.x = 36
                 self.tabledata.isHidden = false
                print(self.x)
                self.tabledata.reloadData()
                
            }     else  if item == "المنامة"{
                self.x = 37
                 self.tabledata.isHidden = false
                print(self.x)
                self.tabledata.reloadData()
                
            }     else  if item == "الدوحة" {
                self.x = 38
                 self.tabledata.isHidden = false
                print(self.x)
                self.tabledata.reloadData()
                
            }     else  if item == "مسقط" {
                self.x = 39
                 self.tabledata.isHidden = false
                print(self.x)
                self.tabledata.reloadData()
                
            }     else  if item == "الخرطوم" {
                self.x = 40
                 self.tabledata.isHidden = false
                print(self.x)
                self.tabledata.reloadData()
                
            }     else  if item == "أديس أبابا" {
                self.x = 41
                 self.tabledata.isHidden = false
                print(self.x)
                self.tabledata.reloadData()
               
                
            }
            
            
        }
        
        dropDown.show()
        dropDown.dismissMode = .automatic
        //        self.calenderasd.isEnabled = true
        
    }
    
  
  
    
    @IBAction func webvewnew(_ sender: UIButton) {
          if CheckInternet.Connection() {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webviewViewController")
        self.present(vc, animated: true, completion: nil)
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
    
    
   
    
    
    @IBAction func back(_ sender: Any) {
//        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "main") as? SWRevealViewController
//        self.present(calender!, animated: false)
       _ = navigationController?.popViewController(animated: true)
        print("sss")
    }
   
}




extension m5tbrtna7olal3alm: BrabchCellDelegate {
   
    
    func phone( namberphone rakam: Int) {
        
            let url: NSURL = URL(string: "TEL://\(rakam )")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            print(url)
        
        
    }
    
    func gotoDidPressed(long: Double , lat: Double){
        if CheckInternet.Connection() {
        let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webviewViewController") as!webviewViewController
        nextVC.lat = lat
        nextVC.lon = long
        
        present(nextVC, animated: true, completion: nil)
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
   
     func sheardatapressed(loction: String, title: String, phone: String , lon:Double,lat:Double) {
          if CheckInternet.Connection() {
        print(loction)
        let textToShare = [ "https://maps.google.com/?q=@\(lat),\(lon)\n\n \(title)\n\(loction)\n\(phone)" ]
        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        self.present(activityViewController, animated: true, completion: nil)
        print( title ,loction , phone )
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




