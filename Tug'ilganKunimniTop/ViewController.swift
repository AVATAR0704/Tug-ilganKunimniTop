//
//  ViewController.swift
//  Tug'ilganKunimniTop
//
//  Created by Macservis on 20/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DayTF: UITextField!
    @IBOutlet weak var MonthTF: UITextField!
    @IBOutlet weak var YearTF: UITextField!
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    @IBAction func ButtonActionRun(_ sender: UIButton) {
        
        
  
        guard let day = DayTF.text,let month = MonthTF.text, let yaer = YearTF.text else {
            return
        }
        let calendar = Calendar.current
        
        var dateComponent = DateComponents()
        
        dateComponent.day = Int(day)
        dateComponent.month = Int(month)
        dateComponent.year = Int(yaer)
        
      
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        
        guard let date = calendar.date(from: dateComponent) else { return  }
        
        
        let weekDay = dateFormatter.string(from: date)
        
        
        switch weekDay {
        case "Monday":
            ResultLabel.text = "Dushanba"
        case "Tuesday":
            ResultLabel.text = "Seshanba"
        case "Wednesday":
            ResultLabel.text = "Chorshanba"
        case "Thursday":
            ResultLabel.text = "Payshanba"
        case "Friday":
            ResultLabel.text = "Juma"
        case "saturday":
            ResultLabel.text = "Shanba"
        default:
            ResultLabel.text = "Yakshanba"
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

