//
//  BramgtowTableViewCell.swift
//  albrg
//
//  Created by mac on 5/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class BramgtowTableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var mytexst: UITextView!
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var myimage: UIImageView!
  

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func awakeFromNib() {
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.borderWidth = 0.3
        view.layer.cornerRadius = 10
    }

}
