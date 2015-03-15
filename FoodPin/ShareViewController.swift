

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var backgroundView:UIImageView!
    @IBOutlet weak var dialogView:UIView!
    @IBOutlet weak var facebookButton:UIButton!
    @IBOutlet weak var messageButton:UIButton!
    @IBOutlet weak var twitterButton:UIButton!
    @IBOutlet weak var emailButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var blurEffect = UIBlurEffect(style: .Light)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundView.addSubview(blurEffectView)
//        let scale = CGAffineTransformMakeScale(0.0, 0.0)
//        let translation = CGAffineTransformMakeTranslation(0, 500)
        facebookButton.transform = CGAffineTransformMakeTranslation(0, 500)
        messageButton.transform = CGAffineTransformMakeTranslation(0, 500)
        twitterButton.transform = CGAffineTransformMakeTranslation(0, -500)
        emailButton.transform = CGAffineTransformMakeTranslation(0, -500)
//        dialogView.transform = CGAffineTransformConcat(scale, translation)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
//            let scale = CGAffineTransformMakeScale(1, 1)
            self.facebookButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.emailButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }, completion: nil)
        
        UIView.animateWithDuration(0.7, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.messageButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.twitterButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }, completion: nil)
    }
}
