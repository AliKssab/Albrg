//
//  alt7derLlf7s.swift
//  albrg
//
//  Created by mac on 8/17/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DataModelnewgood {
    var body: String
    
    var isExpanded: Bool = false
    
    init(body: String) {
        self.body = body
        
    }
    
}
class alt7derLlf7s: UIViewController {

    @IBOutlet weak var mytabelview: UITableView!
    var array = [DataModelnewgood]()
    var array1 = [DataModelnewgood]()
    
    
     let data = [ "AlRajhi Takaful rhsfdf sg dsg ds gds g sdg ds g sdg sd gsd g sddg sdxgghghgfg fh dfh dfh  hdf hfd h fd"
        ,"Medgulfh dfo. - KSA "
        , "Glo fh ddfhbemed - Kuwait"
        , " Kuwh dfh df hfdhfd hfd h dfh ait Insurance Co." ]
    
  var arrayOfStringsali = [String]()
    let arrys =  ["دهون الدم" ,"سرعة الترسيب" , "سكر صائم"  ,"سكر بعد الأكل بساعتين" ,"منحنى السكر"  , "اختبار الحمل على عينة من البول"  ,"مزرعة البول" ,"تجميع بول 24 ساعة" , "اختبار الدرن (السل)"  ,"مسحة الحلق" ,"عينة البصاق (عدا البصاق للدرن)" , "عينة البصاق للدرن"  ,"تحليل السائل المنوى (المني)" ,"تحليل إفرازات غدة البروستاتا" , "مسحة من القضيب"  ,"مسحة من المهبل" ,"مزرعة البراز" , "تحليل براز الدم الخفي"  ,"تحليل أدوية الربو و أدوية الصرع" ,"تحليل الحديد" , "تحليل المخدرات و المنشطات و الأدوية"  ,"تحليل أنيميا الفول" ,"تحليل هرمون البرولاكتين"  , "تحليل هرمون ألدوستيرون"  ,"تحليل إنزيم الرينين" ,"تحليل الهرمون المنبه للغدة الدرقية (FSH)"  , "تحليل هرمون بروجستيرون"  ,"تحليل الغدة الدرقية" ,"اختبار وظائف الصفائح الدموية"  , "اختبار سيولة الدم"  ,"تحليل دلالات الأورام العامة للجهاز الهضمى" ]
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        didFetchData()
        loadData1()
    }
    private func loadData1() {
        let reader4 = TxtReader(filePrefix: "aliwicca", fileExtension: "txt", from: 1, to:31)
        reader4.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStringsali = arrayOfStrings
            self.didFetchData()
        }
        
        
    }
    private func didFetchData() {
        array = arrayOfStringsali.map({
            DataModelnewgood(body: $0)
        })
        array1 = arrys.map({
            DataModelnewgood(body: $0)
        })
        mytabelview.reloadData()
    }
    
    
    @IBAction func Back(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
}
extension alt7derLlf7s: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfStringsali.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! alt7terlf7sceel
        
        cell.modelnew = array[indexPath.row]
        cell.modelnew1 = array1[indexPath.row]
        

        cell.delegate = self
        return cell
    }
    
}


extension alt7derLlf7s: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
}



extension alt7derLlf7s: MyTableViewCellDelegatenewgood {
    func toggleModel(_ model: DataModelnewgood, cell: UITableViewCell) {
        model.isExpanded = !model.isExpanded
        
        if let indexPath = mytabelview.indexPath(for: cell) {
            mytabelview.reloadRows(at: [indexPath], with: .automatic)
        } else {
            mytabelview.reloadData()
        }
    }
    
    
    
  
    
    
    
}
