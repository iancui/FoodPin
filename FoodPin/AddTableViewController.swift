//
//  AddTableViewController.swift
//  FoodPin
//
//  Created by Ian on 15/4/28.
//  Copyright (c) 2015年 AppCoda. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
                let imagePicker = UIImagePickerController()
                imagePicker.allowsEditing = false
                imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
                self.presentViewController(imagePicker, animated: true, completion: nil)
                imagePicker.delegate = self
            }
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
 
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // 获得从相册中选取的图像。
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        // 设置imageview的显示属性。
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        // 只显示imageview的长宽的图像，其余部分截取掉
        imageView.clipsToBounds = true
        // 调用TODO
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
//        UIApplication.sharedApplication().pref
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: false)
    }
    
    
}
