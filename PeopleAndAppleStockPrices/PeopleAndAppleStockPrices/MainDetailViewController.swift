//
//  MainDetailViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Pursuit on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class MainDetailViewController: UIViewController {
    //email name city
    
    @IBOutlet weak var userImageLabel: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    @IBOutlet weak var userCityLabel: UILabel!
    
    
    var actualUser: UserInfo?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let actualUser = actualUser else {
            fatalError("the segue was done incorrectly and needs to be checked...")
        }
        let first = actualUser.name.first
        let last = actualUser.name.last

        userCityLabel.text = actualUser.location.city
        userNameLabel.text = "\(first) \(last)"
        userEmailLabel.text = actualUser.email
       // userImageLabel.images = actualUser.picture
    }
     
}
