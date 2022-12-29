//
//  secondcollection.swift
//  albrg
//
//  Created by mac on 7/19/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DataModelali {
    var body: String
    var body1: String
    var body2: String
    var isExpanded: Bool = false
    
    init(body: String) {
        self.body = body
        self.body1 = body
        self.body2 = body
        
    }
    
}

class secondcollection: UIViewController {
    
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet weak var labelnamber: UILabel!
    @IBOutlet weak var labelarb: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var inits = 0
    var newdataa = ["1" , "2" , "3" , "1" , "2" , "3" , "1" , "2" , "3" ,"1" , "2" , "3" ,"34" , "24" , "32" ,"44"]
    var newdatasa = ["1" , "2" , "3" , "1" , "2" , "3" , "1" , "2" , "3" ,"1" , "2" , "3" ,"34" , "24" , "32" ,"44"]
    var arrayOfStrings = [String]()
    var arrayOfStrings1 = [String]()
    var arrayOfStrings2 = [String]()
    var arrayOfStrings3 = [String]()
    var arrayOfStrings4 = [String]()
    var arrayOfStrings5 = [String]()
    var arrayOfStrings6 = [String]()
    var arrayOfStrings7 = [String]()
    var arrayOfStrings8 = [String]()
    var arrayOfStrings9 = [String]()
    var arrayOfStrings10 = [String]()
    var arrayOfStrings11 = [String]()
    var arrayOfStrings12 = [String]()
    
    var newarraya = [DataModelali]()
    var newarraya1 = [DataModelali]()
    var newarraya2 = [DataModelali]()
    var newarraya3 = [DataModelali]()
    var newarraya4 = [DataModelali]()
    var newarraya5 = [DataModelali]()
    var newarraya6 = [DataModelali]()
    var newarraya7 = [DataModelali]()
    var newarraya8 = [DataModelali]()
    var newarraya9 = [DataModelali]()
    var newarraya10 = [DataModelali]()
    var newarraya11 = [DataModelali]()
    var newarraya12 = [DataModelali]()
    
    
    
    
     var newarrays = [DataModelali]()
     var newarrays1 = [DataModelali]()
     var newarrays2 = [DataModelali]()
     var newarrays3 = [DataModelali]()
     var newarrays4 = [DataModelali]()
     var newarrays5 = [DataModelali]()
     var newarrays6 = [DataModelali]()
     var newarrays7 = [DataModelali]()
     var newarrays8 = [DataModelali]()
     var newarrays9 = [DataModelali]()
     var newarrays10 = [DataModelali]()
     var newarrays11 = [DataModelali]()
     var newarrays12 = [DataModelali]()
    
    
    
    
    
    
    var array = [DataModelali]()
    var array1 = [DataModelali]()
    var array2 = [DataModelali]()
    var array3 = [DataModelali]()
    var array4 = [DataModelali]()
    var array5 = [DataModelali]()
    var array6 = [DataModelali]()
    var array7 = [DataModelali]()
    var array8 = [DataModelali]()
    var array9 = [DataModelali]()
    var array10 = [DataModelali]()
    var array11 = [DataModelali]()
    var array12 = [DataModelali]()
    
    let lablewicca = ["التدخين", "إدمان الكحوليات" , "حرقان القلب", "سوءالتغذية" ,"فقدان الشهية " ,"طعام غير صحي" , "نقص الحديد", "الخمول والكسل","الضغوط النفسية", "العصبية/الغضب", "الأرق/وقلة النوم", "جرعة دواء ذائدة" , "ضعف/سقوط الشعر"]
    
    var dataali = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","http://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ferritin/ferritin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/folate/folate.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/blood%20smear/blood%20smear.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20b12/vitamin%20b12.html"]
    var dataali1 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ag%20ratio/ag%20ratio.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html"]
    var dataali2 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/h.pylori/h.pylori.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/homocysteine/homocysteine.html"]
    var dataali3 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20b12/vitamin%20b12.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ferritin/ferritin.html"]
    var dataali4 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/iron%20tests/iron%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ferritin/ferritin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/folate/folate.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20b12/vitamin%20b12.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/homocysteine/homocysteine.html"]
    var dataali5 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html"]
    var dataali6 =  ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/iron%20tests/iron%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html"]
    var dataali7 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ag%20ratio/ag%20ratio.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html"]
    var dataali8 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cortisol/cortisol.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html"]
    var dataali9 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html"]
    var dataali10 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cortisol/cortisol.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html"]
    var dataali11 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html"]
    var dataali12 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/iron%20tests/iron%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ferritin/ferritin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/folate/folate.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20b12/vitamin%20b12.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/trace%20minerals/trace%20minerals.html"]
    
    
    
    
   
    var NEWarray1 = ["تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء","تحليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكبد","تحاليل وظائف الكلي","تحليل البول","تحليل بروتين الفيريتين ","تحليل الفولات / حمض الفوليك","فحص شريحة الدم","تحليل فيتامين ( B١٢ )"]
    
    var NEWarray2 = ["تحاليل وظائف الكبد","تحليل نسبة الألبومين/الجلوبولين","تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات ( دلائل ) خلايا الدم الحمراء","تحاليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكلي","تحليل البول"]
    
    var NEWarray3 = ["تحليل جرثومة المعدة","تحليل ملف الدهون","تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات ( دلائل ) خلايا الدم الحمراء","تحليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكبد","تحاليل وظائف الكلي","تحليل البول","تحليل الحمض الأميني هوموسيستين"]
    
    var NEWarray4 = ["تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء","تحاليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكبد","تحاليل وظائف الكلي","تحليل هرمون الثايرونين ثلاثي اليود","تحليل هرمون الثايروكسين","تحليل الهرمون المنبه للغدة الدرقية","تحليل فيتامين ( B١٢ )","تحليل فيتامين ( D ) ","تحليل بروتين الفيريتين "]
    
    var NEWarray5 = ["تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء","تحليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل الحديد","تحليل بروتين الفيريتين ","تحليل الفولات / حمض الفوليك","تحليل فيتامين ( B١٢ ) ","تحليل فيتامين ( D )","تحليل الحمض الأميني هوموسيستين"]
    
    var NEWarray6 = ["تحليل ملف الدهون","تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء","تحاليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكبد","تحاليل وظائف الكلي","تحليل سكر الجلوكوز","تحليل الهيموجلوبين السكري ( السكر التراكمي ) "]
    
    var NEWarray7 = ["تحليل ملف الدهون","تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء","تحاليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل الحديد","تحاليل وظائف الكبد","تحاليل وظائف الكلي","تحليل سكر الجلوكوز","تحليل الهيموجلوبين السكري ( السكر التراكمي ) "]
    
    var NEWarray8 = ["تحاليل وظائف الكبد","تحليل نسبة الألبومين/الجلوبولين","تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات ( دلائل ) خلايا الدم الحمراء","تحاليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكلي","تحليل البول","تحليل سكر الجلوكوز","تحليل الهيموجلوبين السكري (السكر التراكمي) ","تحليل ملف    الدهون","تحليل فيتامين (D) "]
    var NEWarray9 = ["تحليل ملف الدهون","تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء","تحاليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكبد","تحاليل وظائف الكلي","تحليل هرمون الكورتيزول","تحليل هرمون الثايرونين ثلاثي اليود","تحليل هرمون الثايروكسين","تحليل الهرمون المنبه للغدة الدرقية"]
    
    var NEWarray10 = ["تحليل ملف الدهون","تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء","تحاليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكبد","تحاليل وظائف الكلي","تحليل البول"]
    
    var NEWarray11 = ["تحليل ملف الدهون","تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء","تحاليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية","تحاليل وظائف الكبد","تحاليل وظائف الكلي","تحليل البول","تحليل هرمون الكورتيزول","تحليل هرمون الثايرونين ثلاثي اليود","تحليل هرمون الثايروكسين","تحليل الهرمون المنبه للغدة الدرقية","تحليل سكر الجلوكوز","تحليل الهيموجلوبين السكري ( السكر التراكمي ) "]
    
    var NEWarray12 = ["تحليل ملف الدهون"
,"تحليل صورة الدم الكاملة"
        ,"تحليل تباين خلايا الدم البيضاء",
         "تحليل تعداد خلايا الدم البيضاء",
      "تحليل الهيموجلوبين",
      "اختبار سرعة الترسيب في الدم ",
         "تحليل الهيماتوكريت",
         "مؤشرات ( دلائل ) خلايا الدم الحمراء",
         "تحليل وظائف الصفائح الدموية",
         "تحليل تعداد الصفائح الدموية",
         "تحاليل وظائف الكبد",
         "تحاليل وظائف الكلي",
         "تحليل البول",
         "تحاليل سكر الجلوكوز"]
    
    var NEWarray13 = ["تحاليل الحديد","تحليل بروتين الفيريتين","تحليل الفولات / حمض الفوليك","تحليل صورة الدم الكاملة","تحليل الهيموجلوبين","تحليل الهيماتوكريت","مؤشرات ( دلائل ) خلايا الدم الحمراء","تحليل هرمون الثايرونين ثلاثي اليود","تحليل هرمون الثايروكسين","تحليل الهرمون المنبه للغدة الدرقية","تحليل فيتامين ( B١٢ )","تحليل المعادن النادرة ( مستوي الزنك )"]
    
    
    var newdatas = ["Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Urinalysis; Urine Test","Ferritin","Folate / Folic Acid","Blood Smear","Vitamin B12"]
    
    var newdatas1 = ["Hepatic Function Panel; Liver Panel","Albumin/Globulin (A/G) Ratio","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Renal (Kidney) Function Panel","Urinalysis; Urine Test"]
    
    var newdatas2 = ["Helicobacter pylori Testing","Lipid Profile","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Urinalysis; Urine Test","Homocysteine"]
    
    var newdatas3 = ["Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Triiodothyronine; Free T3 and Total T3","Thyroxine; Free T4","Thyroid-stimulating Hormone (TSH); Thyrotropin","Vitamin B12","Vitamin D Tests","Ferritin"]
    
    var newdatas4 = ["Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Iron (Fe) Tests","Ferritin","Folate / Folic Acid","Vitamin B12","Vitamin D Tests","Homocysteine"]
    
    var newdatas5 = ["Lipid Profile","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Glucose Tests","Hemoglobin A1c (HbA1c)"]
    
    var newdatas6 = ["Lipid Profile","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Iron (Fe) Tests","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Glucose Tests","Hemoglobin A1c (HbA1c)"]
    
    var newdatas7 = ["Hepatic Function Panel; Liver Panel","Albumin/Globulin (A/G) Ratio","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Renal (Kidney) Function Panel","Urinalysis; Urine Test","Glucose Tests","Hemoglobin A1c (HbA1c)","Lipid Profile","Vitamin D Tests"]
    
    var newdatas8 = ["Lipid Profile","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Cortisol","Triiodothyronine; Free T3 and Total T3","Thyroxine; Free T4","Thyroid-stimulating Hormone (TSH); Thyrotropin"]
    
    var newdatas9 = ["Lipid Profile","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Urinalysis; Urine Test"]
    
    var newdatas10 = ["Lipid Profile","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Urinalysis; Urine Test","Cortisol","Triiodothyronine; Free T3 and Total T3","Thyroxine; Free T4","Thyroid-stimulating Hormone (TSH); Thyrotropin","Glucose Tests","Hemoglobin A1c (HbA1c)"]
    
    var newdatas11 = ["Lipid Profile","Complete Blood Count (CBC)","White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Urinalysis; Urine Test","Glucose Tests"]
    
    
    var newdatas12 = ["Iron (Fe) Tests","Ferritin","Folate / Folic Acid","Complete Blood Count (CBC)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Triiodothyronine; Free T3 and Total T3","Thyroxine; Free T4","Thyroid-stimulating Hormone (TSH); Thyrotropin","Vitamin B12","Trace Minerals(Zinc Level)"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        didFetchData()
//        self.backbutton.isEnabled = true
//        self.backbutton.clipsToBounds = true
//        self.backbutton.layer.cornerRadius = 40
        //        myimage.image = myimags[IndexPath.item]
        backbutton.clipsToBounds = true
        backbutton.layer.borderColor = UIColor.white.cgColor
        backbutton.layer.borderWidth = 3
        backbutton.layer.cornerRadius = 20
    }
    
    private func loadData() {
        let reader = TxtReader(filePrefix: "smoking_", fileExtension: "txt", from: 1, to: 16)
        reader.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings = arrayOfStrings
            self.didFetchData()
        }
        
        
        
        let reader1 = TxtReader(filePrefix: "alcoholism_", fileExtension: "txt", from: 1, to: 13)
        reader1.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings1 = arrayOfStrings
            self.didFetchData()
        }
        
        let reader2 = TxtReader(filePrefix: "heartburn_", fileExtension: "txt", from: 1, to: 15)
        reader2.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings2 = arrayOfStrings
            self.didFetchData()
        }
        let reader3 = TxtReader(filePrefix: "malnutrition_", fileExtension: "txt", from: 1, to: 17)
        reader3.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings3 = arrayOfStrings
            self.didFetchData()
        }
        let reader4 = TxtReader(filePrefix: "decreased_appetite_", fileExtension: "txt", from: 1, to:15)
        reader4.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings4 = arrayOfStrings
            self.didFetchData()
        }
        let reader5 = TxtReader(filePrefix: "junk_food_", fileExtension: "txt", from: 1, to: 14)
        reader5.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings5 = arrayOfStrings
            self.didFetchData()
        }
        let reader6 = TxtReader(filePrefix: "low_iron_", fileExtension: "txt", from: 1, to: 15)
        reader6.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings6 = arrayOfStrings
            self.didFetchData()
        }
        let reader7 = TxtReader(filePrefix: "no_exercise_", fileExtension: "txt", from: 1, to: 17)
        reader7.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings7 = arrayOfStrings
            self.didFetchData()
        }
        let reader8 = TxtReader(filePrefix: "stress_", fileExtension: "txt", from: 1, to: 16)
        reader8.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings8 = arrayOfStrings
            self.didFetchData()
        }
        let reader9 = TxtReader(filePrefix: "anger_", fileExtension: "txt", from: 1, to: 13)
        reader9.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings9 = arrayOfStrings
            self.didFetchData()
        }
        let reader10 = TxtReader(filePrefix: "no_sleep_", fileExtension: "txt", from: 1, to: 19)
        reader10.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings10 = arrayOfStrings
            self.didFetchData()
        }
        let reader11 = TxtReader(filePrefix: "drug_overdose_", fileExtension: "txt", from: 1, to: 14)
        reader11.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings11 = arrayOfStrings
            self.didFetchData()
        }
        let reader12 = TxtReader(filePrefix: "hairloss_", fileExtension: "txt", from: 1, to: 12)
        reader12.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings12 = arrayOfStrings
            self.didFetchData()
        }
       
    }
    
    private func didFetchData() {
        
        
        
        newarrays = newdatas.map({
            DataModelali(body: $0)
        })
        newarrays1 = newdatas1.map({
            DataModelali(body: $0)
        })
        newarrays2 = newdatas2.map({
            DataModelali(body: $0)
        })
        newarrays3 = newdatas3.map({
            DataModelali(body: $0)
        })
        newarrays4 = newdatas4.map({
            DataModelali(body: $0)
        })
        newarrays5 = newdatas5.map({
            DataModelali(body: $0)
        })
        newarrays6 = newdatas6.map({
            DataModelali(body: $0)
        })
        newarrays7 = newdatas7.map({
            DataModelali(body: $0)
        })
        newarrays8 = newdatas8.map({
            DataModelali(body: $0)
        })
        newarrays9 = newdatas9.map({
            DataModelali(body: $0)
        })
        newarrays10 = newdatas10.map({
            DataModelali(body: $0)
        })
        newarrays11 = newdatas11.map({
            DataModelali(body: $0)
        })
        newarrays12 = newdatas12.map({
            DataModelali(body: $0)
        })
        
        
        
        
        
        
        
        
        
        newarraya = NEWarray1.map({
            DataModelali(body: $0)
        })
        newarraya1 = NEWarray2.map({
            DataModelali(body: $0)
        })
        newarraya2 = NEWarray3.map({
            DataModelali(body: $0)
        })
        newarraya3 = NEWarray4.map({
            DataModelali(body: $0)
        })
        newarraya4 = NEWarray5.map({
            DataModelali(body: $0)
        })
        newarraya5 = NEWarray6.map({
            DataModelali(body: $0)
        })
        newarraya6 = NEWarray7.map({
            DataModelali(body: $0)
        })
        newarraya7 = NEWarray8.map({
            DataModelali(body: $0)
        })
        newarraya8 = NEWarray9.map({
            DataModelali(body: $0)
        })
        newarraya9 = NEWarray10.map({
            DataModelali(body: $0)
        })
        newarraya10 = NEWarray11.map({
            DataModelali(body: $0)
        })
        newarraya11 = NEWarray12.map({
            DataModelali(body: $0)
        })
        newarraya12 = NEWarray13.map({
            DataModelali(body: $0)
        })
        
        
        
        
        
        
        
        
        
        array = arrayOfStrings.map({
            DataModelali(body: $0)
        })
       
        array1 = arrayOfStrings1.map({
            DataModelali(body: $0)
        })
        
        array2 = arrayOfStrings2.map({
            DataModelali(body: $0)
        })
        array3 = arrayOfStrings3.map({
            DataModelali(body: $0)
        })
        array4 = arrayOfStrings4.map({
            DataModelali(body: $0)
        })
        array5 = arrayOfStrings5.map({
            DataModelali(body: $0)
        })
        array6 = arrayOfStrings6.map({
            DataModelali(body: $0)
        })
        array7 = arrayOfStrings7.map({
            DataModelali(body: $0)
        })
        array8 = arrayOfStrings8.map({
            DataModelali(body: $0)
        })
        array9 = arrayOfStrings9.map({
            DataModelali(body: $0)
        })
        array10 = arrayOfStrings10.map({
            DataModelali(body: $0)
        })
        array11 = arrayOfStrings11.map({
            DataModelali(body: $0)
        })
        array12 = arrayOfStrings12.map({
            DataModelali(body: $0)
        })
       
        
        
        tableView.reloadData()
    }
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
    
    @IBAction func atselbna(_ sender: Any) {
        let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "m5tbrtna7olal3alm") as! m5tbrtna7olal3alm
        present(photoViewController1, animated: false, completion: nil)
    }
    
    @IBAction func talbzeara(_ sender: Any) {
        let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "2222") as! zearhmnzleh
        present(photoViewController1, animated: false, completion: nil)
    }
    
    
    
    
    
    
    
 
}


extension secondcollection: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if inits == 0 {
            return array.count
        }
        else  if inits == 1{
            return array1.count
        }  else  if inits == 2 {
            return array2.count
        }  else  if  inits == 3 {
            return array3.count
        }  else  if inits == 4 {
            return array4.count
        }  else  if inits == 5 {
            return array5.count
        }  else  if inits == 6 {
            return array6.count
        }  else  if inits ==  7 {
            return array7.count
        }  else  if inits == 8 {
            return array8.count
        }  else  if inits == 9 {
            return array9.count
        }  else  if inits == 10 {
            return array10.count
        }  else  if inits == 11 {
            return array11.count
        }  else  {
            return array12.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! secondcollectioncell
        //         labelarb.text = lable1[indexPath.row]
//        cell.labelsdata = lablewicca[indexPath.row]
//        cell.labelsdata = lablewicca[indexPath.row]
        
       
        
        
        
        
        if inits == 0 {
            labelarb.text =   "فحوصات التدخين"
            
            labelnamber.text = "(١٦)فحصا متوفرا "
            myimage.image =    UIImage(named: "smoking")!
            cell.modela = array[indexPath.row]
            cell.model1a = newarraya[indexPath.row]
            cell.model2a = newarrays[indexPath.row]
            cell.datawebview = dataali[indexPath.row]
            cell.labelsdata =  "التدخين"
            
//
//            let paragraphStyle = NSMutableParagraphStyle()
//            paragraphStyle.lineSpacing = 20
//
//            let attributedText = NSAttributedString(string: "\(arrayOfStrings)", attributes: [
//                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14),
//                NSAttributedString.Key.foregroundColor: UIColor.black,
//                NSAttributedString.Key.paragraphStyle: paragraphStyle
//                ])
//
//
//            cell.label.attributedText = attributedText

            
            
            
            
            
            
        } else if inits == 1 {
            labelarb.text =   "فحوصات إدمان الكحوليات"
            labelnamber.text = "( ١٣ ) فحصا متوفرا "
            myimage.image =   UIImage(named: "alcoholism")!
            cell.modela = array1[indexPath.row]
            cell.model1a = newarraya1[indexPath.row]
            cell.model2a = newarrays1[indexPath.row]
            cell.datawebview = dataali1[indexPath.row]
            cell.labelsdata =  "فحوصات إدمان الكحوليات"
            
        } else if inits == 2 {
            labelarb.text =   "فحوصات حرقان القلب"
            labelnamber.text = "( ١٥ ) فحصا متوفرا "
            myimage.image =  UIImage(named: "heart_burn")!
            cell.modela = array2[indexPath.row]
            cell.model1a = newarraya2[indexPath.row]
            cell.model2a = newarrays2[indexPath.row]
            cell.datawebview = dataali2[indexPath.row]
            cell.labelsdata =   "فحوصات حرقان القلب"
        } else if inits == 3 {
            labelarb.text =    "فحوصات سوء التغذية"
            labelnamber.text = "فحصا متوفرا ( ١٧ )"
            myimage.image = UIImage(named: "poor_nutrition")!
            cell.modela = array3[indexPath.row]
            cell.model1a = newarraya3[indexPath.row]
            cell.model2a = newarrays3[indexPath.row]
            cell.datawebview = dataali3[indexPath.row]
            cell.labelsdata = "فحوصات سوء التغذية"
        } else if inits == 4 {
            labelarb.text =    "فحوصات فقدان الشهية"
            labelnamber.text = "فحصا متوفرا ( ١٥ )"
            myimage.image = UIImage(named: "poor_eating")!
            cell.modela = array4[indexPath.row]
            cell.model1a = newarraya4[indexPath.row]
            cell.model2a = newarrays4[indexPath.row]
            cell.datawebview = dataali4[indexPath.row]
            cell.labelsdata =  "فحوصات فقدان الشهية"
        } else if inits == 5 {
            labelarb.text =    "فحوصات طعام غير صحي"
            labelnamber.text = "فحصا متوفرا ( ١٤ )"
            myimage.image =   UIImage(named: "junk_food")!
            cell.modela = array5[indexPath.row]
            cell.model1a = newarraya5[indexPath.row]
            cell.model2a = newarrays5[indexPath.row]
            cell.datawebview = dataali5[indexPath.row]
            cell.labelsdata =  "فحوصات طعام غير صحي"
        } else if inits == 6 {
            labelarb.text =    "فحوصات نقص الحديد"
            labelnamber.text = "فحصا متوفرا ( ١٥ )"
            myimage.image = UIImage(named: "low_iron")!
            cell.modela = array6[indexPath.row]
            cell.model1a = newarraya6[indexPath.row]
            cell.model2a = newarrays6[indexPath.row]
            cell.datawebview = dataali6[indexPath.row]
            cell.labelsdata =  "فحوصات نقص الحديد"
        } else if inits == 7 {
            labelarb.text =    "فحوصات الكسل والخمول"
            labelnamber.text = "فحصا متوفرا ( ١٧ )"
            myimage.image =  UIImage(named: "lazy")!
            cell.modela = array7[indexPath.row]
            cell.model1a = newarraya7[indexPath.row]
            cell.model2a = newarrays7[indexPath.row]
            cell.datawebview = dataali7[indexPath.row]
            cell.labelsdata =  "فحوصات الكسل والخمول"
        } else if inits == 8 {
            labelarb.text =   "فحوصات الضغوط النفسية"
            labelnamber.text = "فحصا متوفرا ( ١٦ )"
            myimage.image =   UIImage(named: "stress")!
            cell.modela = array8[indexPath.row]
            cell.model1a = newarraya8[indexPath.row]
            cell.model2a = newarrays8[indexPath.row]
            cell.datawebview = dataali8[indexPath.row]
            cell.labelsdata =  "فحوصات الضغوط النفسية"
        } else if inits == 9 {
            labelarb.text =    "فحوصات العصبية/الغضب"
            labelnamber.text = "فحصا متوفرا ( ١٣ )"
            myimage.image = UIImage(named: "anger")!
            cell.modela = array9[indexPath.row]
            cell.model1a = newarraya9[indexPath.row]
            cell.model2a = newarrays9[indexPath.row]
            cell.datawebview = dataali9[indexPath.row]
            cell.labelsdata =  "فحوصات العصبية/الغضب"
        } else if inits == 10 {
            labelarb.text =     "فحوصات الأرق/قلة النوم"
            labelnamber.text = "فحصا متوفرا ( ١٩ )"
            myimage.image =  UIImage(named: "insomnia")!
            cell.modela = array10[indexPath.row]
            cell.model1a = newarraya10[indexPath.row]
            cell.model2a = newarrays10[indexPath.row]
            cell.datawebview = dataali10[indexPath.row]
            cell.labelsdata =  "فحوصات الأرق/قلة النوم"
        } else if inits == 11 {
            labelarb.text =    "فحوصات جرعة دواء زائدة"
            labelnamber.text = "فحصا متوفرا (١٤ )"
            myimage.image =  UIImage(named: "medicine_overdose")!
            cell.modela = array11[indexPath.row]
            cell.model1a = newarraya11[indexPath.row]
            cell.model2a = newarrays11[indexPath.row]
            cell.datawebview = dataali11[indexPath.row]
            cell.labelsdata =  "فحوصات جرعة دواء زائدة"
        } else if inits == 12 {
            labelarb.text =  "فحوصات ضعف/سقوط الشعر"
            labelnamber.text = "فحصا متوفرا ( ١٢ )"
            myimage.image =   UIImage(named: "hairloss")!
            cell.modela = array12[indexPath.row]
            cell.model1a = newarraya12[indexPath.row]
            cell.model2a = newarrays12[indexPath.row]
            cell.datawebview = dataali12[indexPath.row]
            cell.labelsdata =  "فحوصات ضعف/سقوط الشعر"
        }
        cell.delegate = self
        
        
        return cell
    }
}







extension secondcollection: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270.0
    }
}



extension secondcollection: MyTableViewCellDelegateali {
    
    
   
    
   
    
    func webviewaction(datawebview: String, datalabel: String) {
          if CheckInternet.Connection() {
        let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webviewhomeViewController") as!webviewhomeViewController
      nextVC.dataweb = datawebview
      nextVC.labelss = datalabel
        present(nextVC, animated: true, completion: nil)
          } else {
            let alert = UIAlertController(title: nil, message: "هاتفك غير متصل بالانترنت", preferredStyle: .actionSheet)
            
                        present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
            }
        }
    }
    
    
    
    func toggleModel(_ model: DataModelali, cell: UITableViewCell) {
        model.isExpanded = !model.isExpanded
        if let indexPath = tableView.indexPath(for: cell) {
            tableView.reloadRows(at: [indexPath], with: .automatic)
        } else {
            tableView.reloadData()
        }
    }
}

