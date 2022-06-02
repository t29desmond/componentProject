//
//  ViewController.swift
//  componentProject
//
//  Created by 윤대식 on 2022/03/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorChangeBG: UIView!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var switchLb: UILabel!
    
    
    override func viewDidLoad() {
        switchBtn.setOn(false, animated: true)
         super.viewDidLoad()
        let field = UITextField()
        field.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
        field.borderStyle = .roundedRect
        field.placeholder = "안녕하세요"
        self.view.addSubview(field)
    }
    
    
    @IBAction func colorChangeBtn(_ sender: Any) {
        if switchBtn.isOn {
            colorChangeBG.backgroundColor = .black
            switchLb.textColor = .red
            switchLb.text = "원래대로 바꾸기"
            print("버튼 누름")
            
        } else {
            colorChangeBG.backgroundColor = .white
            switchLb.textColor = .black
            switchLb.text = "배경색 변경"
            print("버튼 제자리누름")
        }
    }
    // 코드로 푸쉬 다시 해보기
//    @IBAction func tapCodePush(_ sender: UIButton) {
//        guard (self.storyboard?.instantiateViewController(identifier: "codePushViewController")) != nil else { return }
//    }
    
}


