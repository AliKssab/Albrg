//
//  clos in app.swift
//  albrg
//
//  Created by mac on 6/15/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class clos_in_app: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func NO(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
        
    }
    
   


    @IBAction func YAS(_ sender: UIButton) {
        
        exit(0)
    }
}












