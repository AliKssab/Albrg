//
//  photoViewController.swift
//  albrg
//
//  Created by mac on 5/17/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class photoViewController: UIViewController {
    
    @IBOutlet weak var myphoto: PhotoSliderView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        let images: [UIImage] = [UIImage(named: "onboard_page01")!,
                                 UIImage(named: "onboard_page02")!,
                                 UIImage(named: "onboard_page03")!,
                                 UIImage(named: "onboard_page04")!,
                                 UIImage(named: "onboard_page05")!,
                                 UIImage(named: "onboard_page06")!]
        myphoto.configure(with: images)    }
    override func viewDidLoad() {
        super .viewDidLoad()
        
    }
    
  
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)

    }
    
}
