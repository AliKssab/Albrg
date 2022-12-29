//
//  shrkinaTableViewCell.swift
//  albrg
//
//  Created by mac on 5/16/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class shrkinaTableViewCell: UITableViewCell {

   
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var myimage: UIImageView!
    
    override func awakeFromNib() {
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.borderWidth = 0.3
        view.layer.cornerRadius = 10
    }
}
