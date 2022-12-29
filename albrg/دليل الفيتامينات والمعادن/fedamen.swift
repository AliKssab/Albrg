//
//  fedamen.swift
//  albrg
//
//  Created by mac on 8/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
struct DataModel4: Decodable {
    var titleAr: String
    var titleEn: String
    var urlAr: String
    var urlEn: String
}
class fedamen: UIViewController , UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var shershbar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var data: [DataModel4] = []
    var filteredData: [DataModel4] = []
    
    var isEnglish = false
    var inSearchMode = false
    
    
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        loadData()
        shershbar.delegate = self
        shershbar.returnKeyType = UIReturnKeyType.default
    }
    
    private func loadData() {
        guard let url = Bundle.main.url(forResource: "data4", withExtension: "json") else {
            fatalError("can't find file: data.json in main bundle")
        }
        
        do {
            let jsonData = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            self.data = try decoder.decode([DataModel4].self, from: jsonData)
            self.tableView.reloadData()
        } catch {
            print(error)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inSearchMode ? filteredData.count : data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? fedamencell else {
            return UITableViewCell()
        }
        
        cell.myviews.backgroundColor = indexPath.row%2 == 0 ? UIColor.init(red: 220/255, green: 227/255, blue: 217/255, alpha: 1) : UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        
        
        let dataModel = inSearchMode ? filteredData[indexPath.row] : data[indexPath.row]
        cell.label.textAlignment = isEnglish ? .left : .right
        cell.congigureCell(text: isEnglish ? dataModel.titleEn : dataModel.titleAr)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         if CheckInternet.Connection() {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webviewF") as! webviewF
        
        let dataModel = inSearchMode ? filteredData[indexPath.row] : data[indexPath.row]
        calender.url = isEnglish ? dataModel.urlEn : dataModel.urlAr
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
        tableView.reloadData()
        
        image2.image =  UIImage(named: "english_list_icon_on")
        image1.image =  UIImage(named: "arabic_list_icon")
    }
    
    @IBAction func arbek(_ sender: Any) {
        isEnglish = false
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
            filteredData = data.filter({ isEnglish ? $0.titleEn.prefix(searchText.count) == searchText : $0.titleAr.prefix(searchText.count) == searchText })
            
            tableView.reloadData()
        }
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
