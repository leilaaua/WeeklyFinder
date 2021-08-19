//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by leila leila on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)

       let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ru_Ru")
       dateFormater.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let weekday = dateFormater.string(from: date)
        let capitalizedWeekday = weekday.capitalized
        
        resultLable.text = capitalizedWeekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

