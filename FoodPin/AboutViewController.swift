//
//  AboutViewController.swift
//  FoodPin
//
//  Created by Ian on 15/11/15.
//  Copyright © 2015年 AppCoda. All rights reserved.
//

import UIKit
import MessageUI

class AboutViewController: UIViewController ,MFMailComposeViewControllerDelegate,UINavigationControllerDelegate{

    @IBAction func sendMail(sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let composer = MFMailComposeViewController()
            composer.mailComposeDelegate = self
            composer.setToRecipients(["iancui@icloud.com"])
            composer.navigationBar.tintColor = UIColor.whiteColor()
            
            presentViewController(composer, animated: true, completion: nil)
            
        }
        
        
    }
    @IBOutlet weak var label: UILabel!
    
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        switch result.rawValue {
        case MFMailComposeResultCancelled.rawValue:

            self.infoNotice("用户取消", autoClear: true)
        case MFMailComposeResultFailed.rawValue:
            self.errorNotice("送信失败", autoClear: true)
        case MFMailComposeResultSaved.rawValue:
            self.successNotice("信已保存", autoClear: true)
        case MFMailComposeResultSent.rawValue:
            self.successNotice("送信成功", autoClear: true)
        default:
            break
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Got Question?" + "\n" + "You're just tap away"
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
