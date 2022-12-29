//
//  shrkina.swift
//  albrg
//
//  Created by mac on 5/16/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class shrkina: UIViewController , UITableViewDataSource , UITableViewDelegate {
        @IBOutlet weak var tableview: UITableView!
    
    
    let Arrayimage: [UIImage] =  [
        UIImage(named: "partners_01")! ,
        UIImage(named: "partners_02")! ,
        UIImage(named: "partners_03")! ,
        UIImage(named: "partners_04")! ,
        UIImage(named: "partners_05")! ,
        UIImage(named: "partners_06")! ,
        UIImage(named: "partners_07")! ,
        UIImage(named: "partners_08")!
    ]
    let arraylabel1 = ["شركة تكافل الراجحي - السعودية",
                       "شركة ميدغلف للتأمين - السعودية",
                       "غلوب ميد - الكويت",
                       "شركة الكويت للتأمين",
                       "شركة أبو ظبي الوطنية للتأمين",
                       "شركة ناس للتأمين بالإمارات",
                       "شركة قطر للتأمين",
                       "شركة أليانز للتأمين بدولة قطر"]
    let arraylabel2 = [ "AlRajhi Takaful Co. - KSA"
        ,"Medgulf Insurance Co. - KSA "
        , "Globemed - Kuwait"
        , " Kuwait Insurance Co."
        ,"ADNIC"
        ,"NAS - UAE"
        ,"QIC INSURANCE"
        ,"ALLIANZ INSURANCE - Qatar"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! shrkinaTableViewCell
        cel.myimage.image = Arrayimage[indexPath.item]
        cel.label1.text = arraylabel1[indexPath.item]
        cel.label2.text = arraylabel2[indexPath.item]
        return cel
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
         if CheckInternet.Connection() {
        if indexPath.row == 0 {
            
                let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkaina1") as! shrkaina1
                present(photoViewController1, animated: false, completion: nil)
        }
        if indexPath.row == 1 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkaina2") as! shrkaina2
            present(photoViewController1, animated: false, completion: nil)
            
        }
        if indexPath.row == 2 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkaina3") as! shrkaina3
            present(photoViewController1, animated: false, completion: nil)
        }
        if indexPath.row == 3 {
            
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkaina4") as! shrkaina4
            present(photoViewController1, animated: false, completion: nil)
        }
        if indexPath.row == 4 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkaina5") as! shrkaina5
            present(photoViewController1, animated: false, completion: nil)
            
        }
        if indexPath.row == 5 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkaina6") as! shrkaina6
            present(photoViewController1, animated: false, completion: nil)
        }
        if indexPath.row == 6 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkaina7") as! shrkaina7
            present(photoViewController1, animated: false, completion: nil)
        }
        if indexPath.row == 7 {
            let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "shrkaina8") as! shrkaina8
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
         self.dismiss(animated: false, completion: nil)
    }
    
}
