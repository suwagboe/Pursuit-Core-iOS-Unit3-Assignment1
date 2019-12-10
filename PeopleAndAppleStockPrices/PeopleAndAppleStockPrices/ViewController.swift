//
//  ViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Pursuit on 12/9/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    var allUsers = [UserInfo](){
        didSet{
            // when allUsers gets assigned the tableView should load..
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
    }
    
    func loadData() {
        allUsers = UserInfo.getUserInfo()
    }
   
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // you should only use the guard let on custom cells??
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)

        let selectedUser = allUsers[indexPath.row]
        
        let firstName = selectedUser.name.first.capitalized
        let lastName = selectedUser.name.last.capitalized
        
        cell.textLabel?.text = "\(firstName) \(lastName)"
        
        return cell
    }
    
}
