//
//  MyTabelViewCel.swift
//  albrg
//
//  Created by mac on 7/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
protocol MyTableViewCellDelegate {
    func toggleModel(_ model: DataModel, cell: UITableViewCell)
    func webviewaction(datawebview:String , datalabel:String)
}
class MyTabelViewCel: UITableViewCell , UIWebViewDelegate{
    var datawebview:String?
    var labelsdata:String?
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buttonlayout: UIButton!
    
    @IBOutlet weak var labels: UILabel!
    @IBOutlet weak var labela: UILabel!
    @IBOutlet weak var myviews: UIView!
    
    @IBOutlet weak var uilayoutvew: UIView!
    @IBOutlet weak var layrview: UIView!
   weak var model: DataModel! {
        didSet {
            label.text = model.body
            myviews.isHidden = !model.isExpanded
        }
        
    }
   weak var model1: DataModel! {
        didSet {
            labela.text = model1.body
           
        }
    }
    weak var model2: DataModel! {
        didSet {
            labels.text = model2.body
            
        }
    }
 
    var delegate: MyTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
      
        
        layrview.clipsToBounds = true
        layrview.layer.borderColor = UIColor.gray.cgColor
        layrview.layer.borderWidth = 0.3
        layrview.layer.cornerRadius = 3
        myviews.isHidden = true
    }
    @IBAction func actionwrbview(_ sender: Any) {
        
        if let delegate = self.delegate {
            delegate.webviewaction(datawebview:self.datawebview!, datalabel:self.labelsdata!)
            }
         
        
    }
    
    @IBAction func action(_ sender: Any) {
        delegate?.toggleModel(model, cell: self)
    }
    
}
