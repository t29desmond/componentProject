import UIKit

class PracticeScrollView: UIViewController {
    
    @IBOutlet weak var verticalStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStackView()
    }
    
    private func configureStackView() {
           for _ in 0..<40 {
               let dummyView = randomColoredView()
               verticalStackView.addArrangedSubview(dummyView)
           }
       }
       
       
       private func randomColoredView() -> UIView {
           let view = UIView()
           view.backgroundColor = UIColor(
               displayP3Red: 1.0,
               green: .random(in: 0...1),
               blue: .random(in: 0...1),
               alpha: .random(in: 0...1))
           view.translatesAutoresizingMaskIntoConstraints = false
           view.heightAnchor.constraint(equalToConstant: .random(in: 100...300)).isActive = true
           return view
       }
}
