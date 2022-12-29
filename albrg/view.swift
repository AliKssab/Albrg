//
//  view.swift
//  albrg
//
//  Created by mac on 4/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class view: UIView {

    
     func viewDidLoad() {
    super.viewDidLoad()
        let layer : CAGradientLayer = CAGradientLayer()
        layer.frame = CGRect( x:0,y:0,
                              width:self.view.frame.size.width,
                              height :self.view.frame.size.height )
        let firstcolor=UIColor.init(red: 152/255, green: 53/255, blue: 160/255, alpha: 1).cgColor
        let secontcolor = UIColor.init(red: 85/255, green: 116/255, blue: 200/255, alpha: 1).cgColor
        layer.startPoint = CGPoint(x:0.4,y:0)
        layer.endPoint   = CGPoint(x:0.7,y:0)
        layer.colors = [firstcolor,secontcolor]
        
        layer.zPosition = -1
        self.view.layer.addSublayer(layer)
        
    }

}
