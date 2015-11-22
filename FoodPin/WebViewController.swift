//
//  WebViewController.swift
//  FoodPin
//
//  Created by Ian on 15/11/15.
//  Copyright © 2015年 AppCoda. All rights reserved.
//

import UIKit
import Alamofire

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = NSURL(string: "http://blog.csdn.net/iancui123") {
            let request = NSURLRequest(URL: url)
            webView.loadRequest(request)
        }
        
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
