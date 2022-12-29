//
//  frimview1.swift
//  albrg
//
//  Created by mac on 4/29/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class frimview1: UIView {


    override func awakeFromNib() {
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 0.3
        self.layer.cornerRadius = 0
    }

}


