//
//  DetailViewController.swift
//  FoodPin
//
//  Created by Ian on 15/2/7.
//  Copyright (c) 2015年 AppCoda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var tableView:UITableView!
    @IBAction func close(segue:UIStoryboardSegue){
        
    }
    var restaurant:Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.restaurantImageView.image = UIImage(named: restaurant.image)
        self.tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
        self.tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        
        title = self.restaurant.name
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("detailCell", forIndexPath: indexPath) as UITableViewCell
        // 隐藏按钮
        switch indexPath.row {
        case 0:
            cell.textLabel!.text = "店名"
            cell.detailTextLabel!.text = restaurant.name
        case 1:
            cell.textLabel!.text = "类型"
            cell.detailTextLabel!.text = restaurant.type
        case 2:
            cell.textLabel!.text = "地点"
            cell.detailTextLabel!.text = restaurant.location
        case 3:
            cell.textLabel!.text = "是否到过这里"
            if restaurant.isVisited {
            cell.detailTextLabel!.text = "是"
                cell.detailTextLabel?.textColor = UIColor.redColor()
            }else {
                
                cell.detailTextLabel!.text = "否"
            }
        default:
            cell.textLabel!.text = ""
            cell.detailTextLabel!.text = ""
        }
        cell.backgroundColor = UIColor.clearColor()
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.hidesBarsOnSwipe = true
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showMap" {
            let destinationController = segue.destinationViewController as! MapViewController
            destinationController.restaurant = restaurant
        }
    }

    
}
