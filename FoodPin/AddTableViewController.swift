//
//  AddTableViewController.swift
//  FoodPin
//
//  Created by Ian on 15/4/28.
//  Copyright (c) 2015年 AppCoda. All rights reserved.
//

import UIKit
import CoreData

class AddTableViewController: UITableViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var btnNo: UIButton!
    @IBOutlet weak var btnYes: UIButton!
    var restaurant:Restaurant!
    var isVisited:Bool = true
    func getAppDelegate() -> AppDelegate{
        return UIApplication.sharedApplication().delegate as! AppDelegate
    }
    
    @IBAction func newRestaurant(sender: UIBarButtonItem) {
        if name.text == "" {
            let alert = UIAlertController(title: "出错", message: "请输入店名", preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil)
            
            alert.addAction(okAction)
            
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            var messages = "店名:\(name.text!)" + "\n"
            messages.appendContentsOf("类型:\(type.text!)" + "\n")
            messages.appendContentsOf("地址:\(location.text!)" + "\n")
            messages.appendContentsOf("是否去过:\(isVisited)")
            
            
            let alert = UIAlertController(title: "测试", message: messages, preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil)
            
            alert.addAction(okAction)
            
//            self.presentViewController(alert, animated: true, completion: nil)
            
            saveRestaurant()
            
            
            
            

        }
        
        
    }
    func saveRestaurant() {
        self.pleaseWait()

        let managedObjectContext = getAppDelegate().managedObjectContext
        
        restaurant = NSEntityDescription.insertNewObjectForEntityForName("Restaurant", inManagedObjectContext: managedObjectContext) as! Restaurant
        
        restaurant.name = name.text
        restaurant.location = location.text
        restaurant.type = type.text
        restaurant.image = UIImagePNGRepresentation(imageView.image!)
        restaurant.isVisited = isVisited
        
        do {
            try managedObjectContext.save()
        } catch {
            self.errorNotice("添加失败", autoClear: true)
            return
        }

        self.clearAllNotice()
        self.successNotice("添加成功！", autoClear: true)
        dismissViewControllerAnimated(true, completion: nil) 
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        btnNo.addTarget(self, action: "touch:", forControlEvents: .TouchUpInside)
        btnYes.addTarget(self, action: "touch:", forControlEvents: .TouchUpInside)
        btnNo.backgroundColor = UIColor.grayColor()
        btnYes.backgroundColor = UIColor.redColor()
    }
    
    func touch(btn :UIButton){
        if btn == btnNo {
            btnNo.backgroundColor = UIColor.redColor()
            btnYes.backgroundColor = UIColor.grayColor()
            isVisited = false
        }else {
            btnNo.backgroundColor = UIColor.grayColor()
            btnYes.backgroundColor = UIColor.redColor()
            isVisited = true
        }
        
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
