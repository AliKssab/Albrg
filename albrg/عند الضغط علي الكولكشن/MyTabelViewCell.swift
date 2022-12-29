//
//  MyTabelViewCell.swift
//  albrg
//
//  Created by mac on 7/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
protocol MyTableViewCellDelegate {
    func toggleModel(_ model: DataModel, cell: UITableViewCell)
}
class MyTabelViewCell: UITableViewCell {
    @IBOutlet weak var labelArb: UILabel!
    
    @IBOutlet weak var buttonlayout: UIButton!
    @IBOutlet weak var myview: UIView!
    @IBOutlet weak var myimage: UIImageView!
//    @IBOutlet weak var myviews: UIView!
    @IBOutlet weak var labeltexst: UILabel!
    @IBOutlet weak var labelEnglsh: UILabel!
    var model: DataModel! {
        didSet {
            labeltexst.text = model.body
            myview.isHidden = !model.isExpanded
        }
    }
    
    var delegate: MyTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myview.isHidden = true
    }
    @IBAction func action(_ sender: Any) {
        delegate?.toggleModel(model, cell: self)
    }
}
