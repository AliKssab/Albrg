//
//  altaat3emat.swift
//  albrg
//
//  Created by mac on 7/27/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DataModelnew {
    var body: String
   
    var isExpanded: Bool = false
    
    init(body: String) {
        self.body = body
        
    }

}


class altaat3emat: UIViewController {
    @IBOutlet weak var mytabelview: UITableView!
     var array = [DataModelnew]()
    var array1 = [DataModelnew]()
    
    
    let data = [ "AlRajhi Takaful rhsfdf sg dsg ds gds g sdg ds g sdg sd gsd g sddg sdxgghghgfg fh dfh dfh  hdf hfd h fd"
        ,"Medgulfh dfo. - KSA "
        , "Glo fh ddfhbemed - Kuwait"
        , " Kuwh dfh df hfdhfd hfd h dfh ait Insurance Co." ]
    
    var arrayOfStringsali = [String]()
  let arrys = ["أذربيجان" , "أرمينيا" , "أستراليا","أستونيا" , "أفغانستان" , "الأرجنتين" , "الأردن","الإمارات العربية المتحدة" ,"ألبانيا" , "البحرين" , "البرازيل","البوسنة والهرسك" ,"الجزائر" , "جمهورية التشيك" , "الدانمارك","السويد" ,"الصين" , "المملكة العربية السعودية" , "الفلبين","الكويت", "ألمانيا" , "النمسا" , "الهند" , "اليابان" , "أندونيسيا" ,"أوروجواي" , "أوزبكستان" , "أوكرانيا" , "إيطاليا" , "بابوا غينيا الجديدة","باكستان" , "بروناي دار السلام" , "بلغاريا" ,"بنجلاديش","بوتان" ,"بوتسوانا" , "بولندا" , "تايلاند","تايوان" , "تركمانستان","تركيا" ,"تشيلي" , "تونس" , "جمهورية سلوفاكيا","جنوب أفريقيا", "جورجيا" , "روسيا" , "روسيا البيضاء" , "رومانيا" , "سريلانكا" ,"سلطنة عمان" , "سلوفينيا" , "سنغافورة" , "سويسرا" , "طاجيكستان","فرنسا" , "فنلندا" , "فيتنام" , "قطر","قيرغيزستان" ,"كازاخستان" , "كرواتيا" , "كمبوديا","كوبا" ,"كوريا الجنوبية" , "كوريا الشمالية" , "لاتفيا","لاوس" ,"لوكسمبورج" , "ليبيا" , "ليتوانيا","ليسوتو", "ماليزيا" , "المغرب" , "مقدونيا" , "منغوليا" , "مولدوفا" ,"ميانمار" , "ناميبيا" ,"نيبال" ,"نيوزيلندا" ,"المجر" ,"هونج كونج","يوغوسلافيا"]
    
    var dataimage : [UIImage] = [
        UIImage(named: "flag_azerbaijan")! ,
        UIImage(named: "flag_armenia")! ,
        UIImage(named: "flag_australia")! ,
        UIImage(named: "flag_estonia")! ,
        UIImage(named: "flag_afghanistan")! ,
        UIImage(named: "flag_argentina")! ,
        UIImage(named: "flag_jordan")! ,
        UIImage(named: "flag_uae")! ,
        UIImage(named: "flag_albania")! ,
        UIImage(named: "flag_bahrain")! ,
        UIImage(named: "flag_brazil")! ,
        UIImage(named: "flag_bosnia")! ,
        UIImage(named: "flag_algeria")! ,
        UIImage(named: "flag_czech")! ,
        UIImage(named: "flag_denmark")! ,
        UIImage(named: "flag_sweden")! ,
        UIImage(named: "flag_china")! ,
        UIImage(named: "flag_ksa")! ,
         UIImage(named: "flag_philippines")! ,
         UIImage(named: "flag_kuwait")! ,
      UIImage(named: "flag_germany")! ,
      UIImage(named: "flag_austria")! ,
     UIImage(named: "flag_india")! ,
        UIImage(named: "flag_japan")! ,
        UIImage(named: "flag_indonesia")! ,
      UIImage(named: "flag_uruguay")! ,
       UIImage(named: "flag_uzbekistan")! ,
        UIImage(named: "flag_ukraine")! ,
       UIImage(named: "flag_italy")! ,
       UIImage(named: "flag_papua_new_guinea")! ,
       UIImage(named: "flag_pakistan")! ,
        UIImage(named: "flag_brunei")! ,
       UIImage(named: "flag_bulgaria")! ,
       UIImage(named: "flag_bangladesh")! ,
       UIImage(named: "flag_bhutan")! ,
        UIImage(named: "flag_botswana")! ,
        UIImage(named: "flag_poland")! ,
        UIImage(named: "flag_thailand")! ,
       UIImage(named: "flag_taiwan")! ,
       UIImage(named: "flag_turkmenistan")! ,
       UIImage(named: "flag_turkey")! ,
       UIImage(named: "flag_chile")! ,
       UIImage(named: "flag_tunisia")! ,
       UIImage(named: "flag_slovakia")! ,
      UIImage(named: "flag_south_africa")! ,
       UIImage(named: "flag_georgia")! ,
     UIImage(named: "flag_russia")! ,
        UIImage(named: "flag_belarus")! ,
       UIImage(named: "flag_romania")! ,
       UIImage(named: "flag_srilanka")! ,
      UIImage(named: "flag_oman")! ,
        UIImage(named: "flag_slovenia")! ,
       UIImage(named: "flag_singapore")! ,
       UIImage(named: "flag_switzerland")! ,
       UIImage(named: "flag_tajikistan")! ,
      UIImage(named: "flag_france")! ,
        UIImage(named: "flag_finland")! ,
        UIImage(named: "flag_vietnam")! ,
       UIImage(named: "flag_qatar")! ,
        UIImage(named: "flag_kyrgyzstan")! ,
       UIImage(named: "flag_kazakhstan")! ,
        UIImage(named: "flag_croatia")! ,
       UIImage(named: "flag_cambodia")! ,
       UIImage(named: "flag_cuba")! ,
        UIImage(named: "flag_south_korea")! ,
       UIImage(named: "flag_north_korea")! ,
       UIImage(named: "flag_latvia")! ,
       UIImage(named: "flag_laos")! ,
        UIImage(named: "flag_luxembourg")! ,
       UIImage(named: "flag_libya")! ,
       UIImage(named: "flag_lithuania")! ,
      UIImage(named: "flag_lesotho")! ,
       UIImage(named: "flag_malaysia")! ,
        UIImage(named: "flag_morocco")! ,
        UIImage(named: "flag_macedonia")! ,
       UIImage(named: "flag_mongolia")! ,
        UIImage(named: "flag_moldova")! ,
       UIImage(named: "flag_myanmar")! ,
       UIImage(named: "flag_namibia")! ,
       UIImage(named: "flag_nepal")! ,
        UIImage(named: "flag_new_zealand")! ,
        UIImage(named: "flag_hungary")! ,
      UIImage(named: "flag_hong_kong")! ,
      UIImage(named: "flag_yugoslavia")! ,
       UIImage(named: "thyroid")!,
       
       
        
]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        didFetchData()
loadData1()
    }
     private func loadData1() {
        let reader4 = TxtReader(filePrefix: "ali", fileExtension: "txt", from: 1, to:84)
        reader4.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStringsali = arrayOfStrings
            self.didFetchData()
        }
        
        
    }
      private func didFetchData() {
        array = arrayOfStringsali.map({
            DataModelnew(body: $0)
        })
        array1 = arrys.map({
            DataModelnew(body: $0)
        })
        mytabelview.reloadData()
    }

   
    @IBAction func Back(_ sender: Any) {
         self.dismiss(animated: false, completion: nil)
    }
}
extension altaat3emat: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfStringsali.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! altaat3ematTableViewCell
        
        cell.modelnew = array[indexPath.row]
         cell.modelnew1 = array1[indexPath.row]

        cell.myimage.image = dataimage[indexPath.row]
        cell.delegate = self
        return cell
    }
    
}


extension altaat3emat: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
}



extension altaat3emat: MyTableViewCellDelegatenew {
   
    
    func toggleModel(_ model: DataModelnew, cell: UITableViewCell) {
        model.isExpanded = !model.isExpanded
        
        if let indexPath = mytabelview.indexPath(for: cell) {
            mytabelview.reloadRows(at: [indexPath], with: .automatic)
        } else {
            mytabelview.reloadData()
        }
    }
    
    
   
    
}
