//
//  cycleImage.swift
//  componentProject
//
//  Created by 윤대식 on 2022/03/11.
//

import UIKit

class cycleImage: UIImageView {

    import UIKit

    class ViewController: UIViewController {

        let imageView: UIImageView = {
            let aImageView = UIImageView()
            aImageView.backgroundColor = .red
            //표시될 UIImage 객체 부여
            aImageView.image = UIImage(named: "cat-5767334_1280")
            aImageView.translatesAutoresizingMaskIntoConstraints = false
            return aImageView
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            view.addSubview(imageView)

            NSLayoutConstraint.activate([
                imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                imageView.widthAnchor.constraint(equalToConstant: 200),
                imageView.heightAnchor.constraint(equalToConstant: 230),
            ])
        }
    }
