//
//  secondViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Pursuit on 12/9/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var allStocks = [Stock]() {
        didSet {
            // once data is added then tableview will reloadData
            tableview.reloadData()
        }
    }
    
    // should filter the stocks ..
    // use game of thrones as a reference
    
    // stocks should show the date and opening stock price ! subtitle cell
    // tableview needs to have sections by month and by year 
    override func viewDidLoad() {
        super.viewDidLoad()
       tableview.dataSource = self
loadData()
    }
    
    func loadData() {
        allStocks = Stock.getStocks()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondDVC = segue.destination as? SecondDetailViewController, let indexPath = tableview.indexPathForSelectedRow  else {
            fatalError("need to double check the segue")
        }
        secondDVC.stock = allStocks[indexPath.row]
    }
    
}

extension secondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allStocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //
        let cell = tableView.dequeueReusableCell(withIdentifier: "stockCell", for: indexPath)
        
        let selectedStock = allStocks[indexPath.row]
        
        cell.textLabel?.text = selectedStock.date
        cell.detailTextLabel?.text = selectedStock.label
        
        //
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         
        return allStocks[section].label
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return allStocks.count
    }
    
}


