//
//  SetMineo.swift
//  albrg
//
//  Created by mac on 4/23/19.
//  Copyright © 2019 mac. All rights reserved.
//
//buttonClosedMenuOverlay
import UIKit

protocol SlideMenuDelegate {
    func slideMenuItemSelectedAtIndex(_ indeex : Int32)
}
class SetMineo: UIViewController {
var btnMenu : UIButton!
    var delegate : SlideMenuDelegate?
    @IBOutlet weak var buttonClosedMenuOverlay: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    btnCloseTapped

    @IBAction func btnCloseTapped(_ sender: UIButton) {
        btnMenu.tag = 0
        if (self.delegate != nil) {
            var index = Int32(sender.tag)
            if(sender == self.buttonClosedMenuOverlay){
                index = -1
            }
            delegate?.slideMenuItemSelectedAtIndex(index)
        }
        
        UIView.animate(withDuration: 0.1, animations: { () -> Void in
            self.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            self.view.removeFromSuperview()
            self.removeFromParent()
        })
    }
}
