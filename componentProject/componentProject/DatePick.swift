//
//  DatePick.swift
//  componentProject
//
//  Created by 윤대식 on 2022/03/11.
//

import UIKit

class DatePick: UIViewController {
    
    let timeSelector : Selector = #selector(DatePick.updateTime)
      let interval = 2.0
      var count = 0
    
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        super.viewDidLoad()

    }
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
               
               let formatter = DateFormatter()
               formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE" //
               lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)

    }
    @objc func updateTime(){
          let date = NSDate()

          let formatter = DateFormatter()
          
          formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"

          lblCurrentTime.text = "현재시간 : "+formatter.string(from: date as Date)
    
}
}
