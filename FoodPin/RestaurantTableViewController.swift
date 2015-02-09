//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by Ian on 15/1/26.
//  Copyright (c) 2015年 AppCoda. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "ForKee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "PalominoEspresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "CafeLore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "Thai Cafe"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney",
        "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London",
        "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop",
            "Cafe", "Tea House", "Austrian / Causual Drink",
            "French", "Bakery", "Bakery", "Chocolate", "Cafe",
            "American / Seafood", "American", "American",
            "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish",
            "Spanish", "British", "Thai"]
    
    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg",
    "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg",
    "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg",
    "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg",
    "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
    var restaurantIsVisited = [Bool](count: 21, repeatedValue: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return restaurantNames.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as CustomTableViewCell

//        cell.frame.height = self.view.frame.height / 2
        cell.nameLabel.text = restaurantNames[indexPath.row]
//        cell.nameLabel.textColor = UIColor.whiteColor()
        cell.backgroundImageView.image = UIImage(named: restaurantImages[indexPath.row])
//    cell.backgroundView?.addSubview(UIImageView(image: UIImage(named: "test"))
//        cell.backgroundImageView.layer.cornerRadius = cell.backgroundImageView.frame.width/2
//        cell.backgroundImageView.clipsToBounds = true
//        cell.backgroundView.
        
        
        cell.locationLabel.text = restaurantLocations[indexPath.row]
//        cell.locationLabel.textColor = UIColor.whiteColor()
        
        cell.typeLabel.text = restaurantTypes[indexPath.row]
//        cell.accessoryType = restaurantIsVisited[indexPath.row]
//        cell.typeLabel.textColor = UIColor.whiteColor()
        if restaurantIsVisited[indexPath.row] {
            cell.accessoryType = .Checkmark
        } else {
            cell.accessoryType = .None
        }

        return cell
    }

//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        // 创建一个可操作的菜单
//        let optionMenu = UIAlertController(title: nil, message: "你想干啥？", preferredStyle: UIAlertControllerStyle.ActionSheet)
//        // 往菜单添加action
//        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
//        optionMenu.addAction(cancelAction)
//        // 
//    let callActionHandler = {
//            (action:UIAlertAction!) -> Void in
//                    let alertMessage = UIAlertController(title: "Service Unavailable", message: "对不起，电话打不通。请稍后再试。", preferredStyle: .Alert)
//                    alertMessage.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
//                    self.presentViewController(alertMessage, animated: true, completion: nil)
//    }
//    
//    let CallAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .Default,handler:callActionHandler)
//    optionMenu.addAction(CallAction)
//    
//    let isVisitedAction = UIAlertAction(title: "I've been here", style: .Default, handler: { (action: UIAlertAction!) -> Void in
//        let cell = tableView.cellForRowAtIndexPath(indexPath)
//        cell?.accessoryType = .Checkmark
//        self.restaurantIsVisited[indexPath.row] = true
//        
//    })
//    
//    optionMenu.addAction(isVisitedAction)
//    
//
//            ,{ (UIAlertAction!) -> Void in
//        let alertMessage = UIAlertController(title: "Service Unavailable", message: "对不起，电话打不通。请稍后再试。", preferredStyle: .Alert)
//        alertMessage.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
//        self.presentViewController(alertMessage, animated: true, completion: nil)
//            })
    
    
//        // 显示菜单
//        self.presentViewController(optionMenu, animated: true, completion: nil)
    
//        tableView.deselectRowAtIndexPath(indexPath: indexPath, animated: false)
    
    
//    }
    
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//            // Delete the row from the data source
//            self.restaurantNames.removeAtIndex(indexPath.row)
//            self.restaurantLocations.removeAtIndex(indexPath.row)
//            self.restaurantTypes.removeAtIndex(indexPath.row)
//            self.restaurantIsVisited.removeAtIndex(indexPath.row)
//            self.restaurantImages.removeAtIndex(indexPath.row)
////            self.tableView.reloadData()
//            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        }
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {
        var shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.Normal, title: "Share",handler:{ (action : UITableViewRowAction!, indexPath : NSIndexPath!) -> Void in
            let shareMenu = UIAlertController(title: nil, message: "Share using", preferredStyle: UIAlertControllerStyle.ActionSheet)
            let twitterAction = UIAlertAction(title: "Twitter", style: UIAlertActionStyle.Default, handler: nil)
            let facebookAction = UIAlertAction(title: "Facebook", style: .Default, handler: nil)
            let emailAction = UIAlertAction(title: "Email", style: .Default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .Default, handler: nil)
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(facebookAction)
            shareMenu.addAction(emailAction)
            shareMenu.addAction(cancelAction)
            self.presentViewController(shareMenu, animated: true, completion: nil)
            
        })
        var deleteAction = UITableViewRowAction(style: .Default, title: "Delete" ,handler :{ (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
            // Delete the row from the data source
            self.restaurantNames.removeAtIndex(indexPath.row)
            self.restaurantLocations.removeAtIndex(indexPath.row)
            self.restaurantTypes.removeAtIndex(indexPath.row)
            self.restaurantIsVisited.removeAtIndex(indexPath.row)
            self.restaurantImages.removeAtIndex(indexPath.row)
            //            self.tableView.reloadData()
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        })
        shareAction.backgroundColor = UIColor(red: 255.0/255.0, green: 166.0/255.0, blue:
            51.0/255.0, alpha: 1.0)
        deleteAction.backgroundColor = UIColor(red: 51.0/255.0, green: 51.0/255.0, blue:
            51.0/255.0, alpha: 1.0)
        
        return [deleteAction,shareAction]
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let destinationController = segue.destinationViewController as DetailViewController
                destinationController.restaurantImage = self.restaurantImages[indexPath.row]
                destinationController.nameLabel = self.restaurantNames[indexPath.row]
                destinationController.locationLabel = self.restaurantLocations[indexPath.row]
                destinationController.typeLabel = self.restaurantTypes[indexPath.row]
            }
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
