//
//  DetailViewController.swift
//  FoodPin
//
//  Created by Ian on 15/2/7.
//  Copyright (c) 2015年 AppCoda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var nameDetailLabel:UILabel!
    @IBOutlet weak var locationDetailLabel:UILabel!
    @IBOutlet weak var typeDetailLabel:UILabel!
    var restaurantImage:String!
    var nameLabel:String!
    var locationLabel:String!
    var typeLabel:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.restaurantImageView.image = UIImage(named: restaurantImage)
        self.nameDetailLabel.text = nameLabel
        self.locationDetailLabel.text = locationLabel
        self.typeDetailLabel.text = typeLabel
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
