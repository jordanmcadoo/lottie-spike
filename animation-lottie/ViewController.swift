import UIKit
import Lottie

class ViewController: UIViewController {
    let animation = Animation.named("spinning-animation")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Your style profile is complete!"
        label.textColor = .white
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        if let customFont = UIFont(name: "BrandonText-Medium", size: 30) {
            label.font = customFont
        } else {
            print("didn't load font")
        }
        label.textAlignment = .center
        label.frame = CGRect(x: 20, y: 200, width: view.frame.width - 40, height: 100)
        view.addSubview(label)
        
        let animationView = AnimationView(animation: animation)
        animationView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        
        view.addSubview(animationView)
        view.backgroundColor = UIColor(red: 0.00, green: 0.63, blue: 0.60, alpha: 1.0)
        
        animationView.play()
    }
}
