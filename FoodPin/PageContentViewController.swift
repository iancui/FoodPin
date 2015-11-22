//
//  PageContentViewController.swift
//  FoodPin
//
//  Created by Ian on 15/11/14.
//  Copyright © 2015年 AppCoda. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {

    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var subHeadingLabel: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    var index = 0
    var heading:String = ""
    var imageFile:String = ""
    var subHeading:String = ""
    
    
    @IBOutlet weak var btnForward: UIButton!
    @IBOutlet weak var btnGetStarted: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headingLabel.text = heading
        subHeadingLabel.text = subHeading
        contentImageView.image = UIImage(named: imageFile)
        pageControl.currentPage = index
        
        btnGetStarted.hidden = (index==2) ? false : true
        btnForward.hidden = (index==2) ? true : false
        
        btnGetStarted.addTarget(self, action: "getStarted", forControlEvents: .TouchUpInside)
        btnForward.addTarget(self, action: "nextScreen", forControlEvents: .TouchUpInside)

        // Do any additional setup after loading the view.
    }
    
    func getStarted(){
        NSUserDefaults.standardUserDefaults().setBool(true, forKey: "hasViewedWalkthrough")
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func nextScreen() {
        let pageViewController = self.parentViewController as! PageViewController
        pageViewController.forward(index)
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
