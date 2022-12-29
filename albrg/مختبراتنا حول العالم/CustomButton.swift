//
//  CustomButton.swift
//  albrg
//
//  Created by mac on 7/4/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    
    override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1) : UIColor.init(red: 172/255, green: 61/255, blue: 44/255, alpha: 1)
        }
    }
    
}


