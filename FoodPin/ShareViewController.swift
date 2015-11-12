

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
        let blurEffect = UIBlurEffect(style: .Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundView.addSubview(blurEffectView)
        facebookButton.transform = CGAffineTransformMakeTranslation(0, 500)
        messageButton.transform = CGAffineTransformMakeTranslation(0, 500)
        twitterButton.transform = CGAffineTransformMakeTranslation(0, -500)
        emailButton.transform = CGAffineTransformMakeTranslation(0, -500)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1.5, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .TransitionFlipFromTop, animations: { () -> Void in
            
            self.facebookButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.emailButton.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
        
        
        UIView.animateWithDuration(1.5, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .OverrideInheritedCurve, animations: { () -> Void in
            self.messageButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.twitterButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }, completion: nil)
    }
}
