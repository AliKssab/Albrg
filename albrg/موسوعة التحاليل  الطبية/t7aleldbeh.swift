//
//  t7aleldbeh.swift
//  albrg
//
//  Created by mac on 8/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
struct DataModelt7alel: Decodable {
    var title: String
    var url: String
    
}

class t7aleldbeh: UIViewController , UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var buttNexstViewControler: UIButton!
    @IBOutlet weak var shershbar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var enData: [DataModelt7alel] = []
    var arData: [DataModelt7alel] = []
    
    
    
    var data: [DataModelt7alel] = []
    var filteredData: [DataModelt7alel] = []
    
    var isEnglish = false
    var inSearchMode = false
    
    
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        buttNexstViewControler.clipsToBounds = true
        buttNexstViewControler.layer.borderColor = UIColor.gray.cgColor
        buttNexstViewControler.layer.borderWidth = 0.3
        buttNexstViewControler.layer.cornerRadius = 25
        
        
        
        loadData()
        shershbar.delegate = self
        shershbar.returnKeyType = UIReturnKeyType.default
    }
    
    private func loadData() {
        guard let arUrl = Bundle.main.url(forResource: "data3", withExtension: "json"), let enUrl = Bundle.main.url(forResource: "dataAR", withExtension: "json") else {
            fatalError("can't find file: name_ar.json or name_en.json or both in main bundle")
        }
        
        do {
            let arJsonData = try Data(contentsOf: arUrl)
            let enJsonData = try Data(contentsOf: enUrl)
            
            let decoder = JSONDecoder()
            self.arData = try decoder.decode([DataModelt7alel].self, from: arJsonData)
            self.enData = try decoder.decode([DataModelt7alel].self, from: enJsonData)
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? t7aleldbehcell else {
            return UITableViewCell()
        }
        
        cell.myviews.backgroundColor = indexPath.row%2 == 0 ? UIColor.init(red: 220/255, green: 227/255, blue: 217/255, alpha: 1) : UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        
        let dataModel = inSearchMode ? filteredData[indexPath.row] : data[indexPath.row]
        cell.label.textAlignment = isEnglish ? .left : .right
        cell.congigureCell(text: dataModel.title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         if CheckInternet.Connection() {
        let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webviewcontrolerT") as! webviewcontrolerT
        
        let dataModel = inSearchMode ? filteredData[indexPath.row] : data[indexPath.row]
        calender.url = dataModel.url
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
//              filteredData = data.filter({ $0.title.prefix(searchText.count) == searchText })
            filteredData = data.filter({ $0.title.contains(searchText)  })
            
            
            tableView.reloadData()
        }
    }
    
    @IBAction func buttonActione(_ sender: Any) {
       
        let photoViewController1 = storyboard?.instantiateViewController(withIdentifier:
            "alt7derLlf7s") as! alt7derLlf7s
        present(photoViewController1, animated: false, completion: nil)
        
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
