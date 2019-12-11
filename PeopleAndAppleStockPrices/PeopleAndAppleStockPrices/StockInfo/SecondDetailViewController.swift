//
//  SecondDetailViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Pursuit on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SecondDetailViewController: UIViewController {
    
    @IBOutlet weak var stockImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var openingPriceLabel: UILabel!
    @IBOutlet weak var closingPriceLabel: UILabel!
    // the image and the background color need to change based if the stock grew or not.
    
    var stock: Stock?  // this should hold the selected stock

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
   Your detail View Controller should contain:

    A UIImage
    A label to represent the date
    Two labels to represent the opening and closing prices
    If the stock price went up that day, set the background color to green and make the image a thumbs up.

    If the stock price went down that day, set the background color to red and make the image a thumbs down.

    You will need to use Auto Layout to constrain your views.}
    */

}
