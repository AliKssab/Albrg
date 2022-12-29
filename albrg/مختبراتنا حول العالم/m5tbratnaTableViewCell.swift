//
//  m5tbratnaTableViewCell.swift
//  albrg
//
//  Created by mac on 6/21/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
protocol BrabchCellDelegate : class {
    func gotoDidPressed(long:Double,lat:Double)
    func sheardatapressed(loction: String, title: String, phone: String , lon:Double,lat:Double)
     func phone(namberphone: Int)
}
class m5tbratnaTableViewCell: UITableViewCell {
    var lat1:Double?
    var lon1:Double?
    var lat = 21.533667
    var lon = 39.203464
    var location : String?
    var title1 : String?
    var phone1 : String?
    var rakam: Int?
    weak var delegate:BrabchCellDelegate?
    @IBOutlet weak var googlemap: UIButton!
    @IBOutlet weak var locatonbutt: UIButton!
    @IBOutlet weak var shear: UIButton!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var loaction: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var myviewdata: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func sherAction(_ sender: Any) {
        
        if let delegate = self.delegate {
            delegate.sheardatapressed(loction: location!, title: title1!, phone:phone1!, lon: lon1!, lat:lat1!)
        }
          
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
    }
  
    
    @IBAction func webviewcontroler(_ sender: UIButton) {
      
      
        if let delegate = self.delegate {
            delegate.gotoDidPressed(long: self.lon, lat: self.lat)
        }
        
    }
    
    @IBAction func namberphone(_ sender: Any) {
         print("")
        if let delegate = self.delegate {
            delegate.phone(namberphone:rakam!)
        }
        
    }
    @IBAction func map(_ sender: Any) {
      
        if (UIApplication.shared.canOpenURL(NSURL(string:"https://maps.google.com")! as URL))
        {
            UIApplication.shared.openURL(NSURL(string:
                "https://maps.google.com/?q=\(lat),\(lon)")! as URL)
        }
      
    }
}



