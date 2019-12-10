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
    @IBOutlet weak var searchBar: UISearchBar!

    var allUsers = [UserInfo](){
        didSet{
            // when allUsers gets assigned the tableView should load..
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        searchBar.delegate = self
        loadData()
    }
    
    func loadData() {
        allUsers = UserInfo.getUserInfo()
    }
    
    func filterdText(_ searchText: String) {
        
        guard !searchText.isEmpty else {
            return
        }
        allUsers = UserInfo.getUserInfo().filter{ $0.name.first.lowercased().contains(searchText.lowercased())
        // how would you do it for both first and last name??
        }
    }
    // prepare for segue function should go here..
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let DVController = segue.destination as? MainDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("the segue to the details controller does not work.. ")
        }
        
        DVController.actualUser = allUsers[indexPath.row]
        
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

extension ViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("search bar search button clicked..")
        
        searchBar.resignFirstResponder()
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            print("inside of text DidChange..")
            loadData()
            return
        }
        
        filterdText(searchText)
    }
    
}
