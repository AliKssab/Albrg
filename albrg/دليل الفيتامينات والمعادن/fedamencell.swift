//
//  fedamencell.swift
//  albrg
//
//  Created by mac on 8/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class fedamencell: UITableViewCell {
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
