//
//  frim.swift
//  albrg
//
//  Created by mac on 5/25/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class frim: UIView {

    override func awakeFromNib() {
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 0.3
        self.layer.cornerRadius = 10
    }

}
