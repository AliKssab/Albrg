//
//  moso3hTableViewCell.swift
//  albrg
//
//  Created by mac on 7/30/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class moso3hTableViewCell: UITableViewCell  {
    @IBOutlet weak var myviews: UIView!
    
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func congigureCell(text: String) {
        
        label.text = text
    }
}
