//
//  moso3halamrad.swift
//  albrg
//
//  Created by mac on 8/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

struct DataModel2: Decodable {
    var titleEn: String
    var urlEn: String
}
class moso3halamrad: UIViewController , UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var buttonARlayout: UIButton!
    @IBOutlet weak var shershbar: UISearchBar!
    @IBOutlet weak var buttonENlayout: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var enData: [DataModel2] = []
    var arData: [DataModel2] = []
    
    
    
    var data: [DataModel2] = []
    var filteredData: [DataModel2] = []
    
    var isEnglish = false
    var inSearchMode = false
    
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        loadData()
        shershbar.delegate = self
        shershbar.returnKeyType = UIReturnKeyType.default
    }
    
    private func loadData() {
        guard let arUrl = Bundle.main.url(forResource: "data2", withExtension: "json"), let enUrl = Bundle.main.url(forResource: "name3E", withExtension: "json") else {
            fatalError("can't find file: name_ar.json or name_en.json or both in main bundle")
        }
        
        do {
            let arJsonData = try Data(contentsOf: arUrl)
            let enJsonData = try Data(contentsOf: enUrl)
            
            let decoder = JSONDecoder()
            self.arData = try decoder.decode([DataModel2].self, from: arJsonData)
            self.enData = try decoder.decode([DataModel2].self, from: enJsonData)
            self.data = self.isEnglish ? self.enData : self.arData
            self.tableView.reloadData()
        } catch {
            print(error)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inSearchMode ? filteredData.count : data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? moso3halamradcell else {
            return UITableViewCell()
        }
        
        cell.myviews.backgroundColor = indexPath.row%2 == 0 ? UIColor.init(red: 220/255, green: 227/255, blue: 217/255, alpha: 1) : UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        
        
        let dataModel = inSearchMode ? filteredData[indexPath.row] : data[indexPath.row]
        cell.label.textAlignment = isEnglish ? .left : .right
        cell.congigureCell(text: dataModel.titleEn)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         if CheckInternet.Connection() {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webviewcontrolerM") as! webviewcontrolerM
        
        
        let dataModel = inSearchMode ? filteredData[indexPath.row] : data[indexPath.row]
        calender.url = dataModel.urlEn
        self.present(calender, animated: true)
         } else {
            let alert = UIAlertController(title: nil, message: "هاتفك غير متصل بالانترنت", preferredStyle: .actionSheet)
            
                        self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true , completion: nil)
                alert.view.tintColor = UIColor.black
                alert.view.backgroundColor = UIColor.cyan  // change background color
                alert.view.layer.cornerRadius = 25
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    @IBAction func english(_ sender: Any) {
        

        isEnglish = true
        data = enData
        inSearchMode = false
        shershbar.text = nil
        tableView.reloadData()
        
        
        
        
        image2.image =  UIImage(named: "english_list_icon_on")
        image1.image =  UIImage(named: "arabic_list_icon")
        
//        shershbar.text = ""
//        isEnglish = false
//        data = enData
//        inSearchMode = false
//        shershbar.text = nil
//        tableView.reloadData()
    }
    
    @IBAction func arbek(_ sender: Any) {
        shershbar.text = ""
        isEnglish = false
        data = arData
        inSearchMode = false
        shershbar.text = nil
        tableView.reloadData()
        image1.image =  UIImage(named: "arabic_list_icon_on")
         image2.image =  UIImage(named: "english_list_icon")
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == "" {
            
            inSearchMode = false
            view.endEditing(true)
            tableView.reloadData()
            
        } else {
            
            inSearchMode = true
            filteredData = data.filter({ $0.titleEn.contains(searchText) })
            
            
            tableView.reloadData()
        }
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
