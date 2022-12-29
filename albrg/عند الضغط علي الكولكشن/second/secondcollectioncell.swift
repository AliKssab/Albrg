//
//  secondcollectioncell.swift
//  albrg
//
//  Created by mac on 7/19/19.
//  Copyright © 2019 mac. All rights reserved.
//


import UIKit
protocol MyTableViewCellDelegateali {
    func toggleModel(_ model: DataModelali, cell: UITableViewCell)
     func webviewaction(datawebview:String , datalabel:String)
}
class secondcollectioncell: UITableViewCell {
    var datawebview:String?
     var labelsdata:String?
    var datawebviewQ = ""
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buttonlayout: UIButton!
    
    @IBOutlet weak var labels: UILabel!
    @IBOutlet weak var labela: UILabel!
    @IBOutlet weak var myviews: UIView!
    
    @IBOutlet weak var uilayoutvew: UIView!
    @IBOutlet weak var layrview: UIView!
    weak var modela: DataModelali! {
        didSet {
            label.text = modela.body
            myviews.isHidden = !modela.isExpanded
        }
        
    }
    weak var model1a: DataModelali! {
        didSet {
            labela.text = model1a.body
            
        }
    }
    weak var model2a: DataModelali! {
        didSet {
            labels.text = model2a.body
            
        }
    }
    
    var delegate: MyTableViewCellDelegateali?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        
        
        layrview.clipsToBounds = true
        layrview.layer.borderColor = UIColor.gray.cgColor
        layrview.layer.borderWidth = 0.3
        layrview.layer.cornerRadius = 3
        myviews.isHidden = true
    }
    
    @IBAction func action(_ sender: Any) {
        delegate?.toggleModel(modela, cell: self)
    }
    
    
    
    @IBAction func actionweb(_ sender: Any) {
        
        if let delegate = self.delegate {
            delegate.webviewaction(datawebview:self.datawebview!, datalabel:self.labelsdata!)
           
        }
        
    }
    
}

