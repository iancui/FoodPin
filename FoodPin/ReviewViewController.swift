import UIKit



class ReviewViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView:UIImageView!
    @IBOutlet weak var dialogView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        var blurEffect = UIBlurEffect(style: .Dark)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
//        dialogView.transform = CGAffineTransformMakeScale(0.0, 0.0)
        // Slide Up Animation
    //    dialogView.transform = CGAffineTransformMakeTranslation(0, 500)
        let scale = CGAffineTransformMakeScale(0.0, 0.0)
        let translate = CGAffineTransformMakeTranslation(0, 500)
        dialogView.transform = CGAffineTransformConcat(scale, translate)
    
    }
    
    override func viewDidAppear(animated: Bool) {
        
        /* Animation 1 */
//        UIView.animateWithDuration(0.7, delay: 0.0, options: nil, animations: {
//            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
//            }, completion: nil)
        /* Spring Animation */
//        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
//            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
//        }, completion: nil)
        // Slide Up Animation
//        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
//            self.dialogView.transform = CGAffineTransformMakeTranslation(0, 0)
//        }, completion: nil)
        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: nil, animations: {
                let scale = CGAffineTransformMakeScale(1, 1)
                let translate = CGAffineTransformMakeTranslation(0, 0)
                self.dialogView.transform = CGAffineTransformConcat(scale, translate)
            }, completion: nil)
        
        
    }
}
