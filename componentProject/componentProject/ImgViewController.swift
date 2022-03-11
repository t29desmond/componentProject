//
//  ImgViewController.swift
//  componentProject
//
//  Created by 윤대식 on 2022/03/11.
//

import UIKit

class ImgViewController: UIViewController {

    @IBOutlet weak var firstImg: UIImageView!
    @IBOutlet weak var secondIMg: UIImageView!
    
    override func viewDidLoad() {
        firstImg.layer.cornerRadius = firstImg.frame.width/2
        secondIMg.layer.cornerRadius = firstImg.frame.width/2
        super.viewDidLoad()

    }
    
}
