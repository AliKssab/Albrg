//
//  altaat3ematTableViewCell.swift
//  albrg
//
//  Created by mac on 7/27/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
protocol MyTableViewCellDelegatenew {
    func toggleModel(_ model: DataModelnew, cell: UITableViewCell)

}

class altaat3ematTableViewCell: UITableViewCell {
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var viewinlabel: UIView!
    
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet weak var dsadas: UIView!
    @IBOutlet weak var labeldata: UILabel!
    weak var modelnew: DataModelnew! {
        didSet {
            labeldata.text = modelnew.body
            viewinlabel.isHidden = !modelnew.isExpanded

        }
    }
   weak var modelnew1: DataModelnew! {
        didSet {

            mylabel.text = modelnew1.body
        }
    }
    
    var delegate: MyTableViewCellDelegatenew?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewinlabel.isHidden = true
        dsadas.clipsToBounds = true
        dsadas.layer.borderColor = UIColor.gray.cgColor
        dsadas.layer.borderWidth = 0.3
        dsadas.layer.cornerRadius = 10
    }

   
    
    @IBAction func buttonaction(_ sender: Any) {
         delegate?.toggleModel(modelnew, cell: self)
    }
    

}
