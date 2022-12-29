//
//  calender.swift
//  albrg
//
//  Created by mac on 6/8/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import FSCalendar
protocol MonthViewDelegate: class {
    func selectedDate(date: Date? )
    
}

class calender: UIViewController {

   
    @IBAction func ok(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        delegate?.selectedDate(date: selectedDate)
        self.dismiss(animated: true, completion: nil)
//        TimeZone(identifier: "UTC")
    }
    var selectedDate: Date?
    weak var delegate: MonthViewDelegate?
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    @IBOutlet weak var clenderzzz: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clenderzzz.dataSource = self
        clenderzzz.delegate = self
        clenderzzz.translatesAutoresizingMaskIntoConstraints = false
        self.clenderzzz == clenderzzz
        clenderzzz.register(FSCalendarCell.self, forCellReuseIdentifier: "CELL")
//        TimeZone(identifier: "UTC")
    }
    
    
}
//var timeZoneIdentifiers: [String] { return TimeZone.knownTimeZoneIdentifiers }

//extension calender:FSCalendarDataSource , FSCalendarDelegate {
//
//
//
//    //    }
//    func calendar(_ calendar: FSCalendar, cellFor date: Date, at position: FSCalendarMonthPosition) -> FSCalendarCell {
//        let cel = calendar.dequeueReusableCell(withIdentifier: "CELL", for: date, at: position)
//        return cel
//    }
//
//}

extension calender:FSCalendarDataSource , FSCalendarDelegate {
    func calendar(_ calendar: FSCalendar, cellFor date: Date, at position: FSCalendarMonthPosition) -> FSCalendarCell {
        let cel = calendar.dequeueReusableCell(withIdentifier: "CELL", for: date, at: position)
        return cel
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
//        self.selectedDate  = date
        let date1 = Date()
        
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        let formattedDate = format.string(from: date)
        let result = format.string(from: date1)
        print("formattedDate\(formattedDate)")
        self.selectedDate  = date
        if date <= date1 {
        
            let calender = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "aaa") as? aaa
            self.present(calender!, animated: true)
            
            
        }
    }
    
}
