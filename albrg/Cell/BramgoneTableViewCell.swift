//
//  BramgoneTableViewCell.swift
//  albrg
//
//  Created by mac on 5/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class BramgoneTableViewCell: UITableViewCell {

    @IBOutlet weak var Texst: UITextView!
    @IBOutlet weak var imagE: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
