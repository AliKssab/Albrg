//
//  didtabelview.swift
//  albrg
//
//  Created by mac on 7/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DataModel {
    var body: String
    var isExpanded: Bool = false
    
    init(body: String) {
        self.body = body
    }
}
class didtabelview: UIViewController {

    @IBOutlet weak var myTabelView: UITableView!
    @IBOutlet weak var namberlabel: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var myimage: UIImageView!
    let but = ["sadas","dasd","das" ,"das","das","das"]
    let data = [ "aacxcsdvsdgdsfdsfaaacxcsdvsdgdsfdsfaaacxcsdvsdgdsfdsfaaacxcsdvsdgdsfdsfaaacxcsdvsdgdsfdsfaaacxcsdvsdgdsfdsfaaacxcsdvsdgdsfdsfaaacxcsdvsdgdsfdsfa","bbb","ccc" , "dfsfdsgagyey yery ery ery eryh ewe " , "eryrewyeryreyerwyew" , "wrgw guwhroiughwriudgri irui giu siughfsliigbfliagiljafbglabfgijbfajgbjkjbg bj h b j vjjhvjhv hvjjh vhjv hj vjvvksfob jdkjvqa "]
    
    var array = [DataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initiate array of models from provided strings
        array = data.map({
            DataModel(body: $0)
        })
        
    }
    
}
  

   





extension didtabelview: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTabelViewCell
        cell.model = array[indexPath.row]
        cell.delegate = self
        //        cell.buttonlaxyout.titleLabel?.text = but[indexPath.row]
//        cell.labeltexst.text = but[indexPath.row]
        return cell
    }
    
}

extension didtabelview: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270.0
    }
    
}

extension didtabelview: MyTableViewCellDelegate {
    
    func toggleModel(_ model: DataModel, cell: UITableViewCell) {
        model.isExpanded = !model.isExpanded
        
        if let indexPath = myTabelView.indexPath(for: cell) {
            myTabelView.reloadRows(at: [indexPath], with: .automatic)
        } else {
            myTabelView.reloadData()
        }
    }
    
}
