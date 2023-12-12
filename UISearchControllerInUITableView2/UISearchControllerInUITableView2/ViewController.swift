//
//  ViewController.swift
//  UISearchControllerInUITableView2
//
//  Created by NTS on 03/11/23.
//

import UIKit


struct DataModel
{
    var fName: String = ""
    var lName: String = ""
}

class ViewController: UIViewController, UISearchBarDelegate, UISearchControllerDelegate {

    
    @IBOutlet weak var tableViewOutlet: UITableView!
    var arrData  = [DataModel]()
    let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrData =
        [
            DataModel(fName: "Pradip", lName: "Khandare"),
            DataModel(fName: "Shreyash", lName: "Jadhav"),
            DataModel(fName: "Suraj", lName: "Kokre"),
            DataModel(fName: "Disha", lName: "Gujrathi"),
            DataModel(fName: "Mona", lName: "Pawar"),
            DataModel(fName: "Shubham", lName: "Jawale"),
            DataModel(fName: "Shubham", lName: "Todkar"),
            DataModel(fName: "Vishal", lName: "Kadiya"),
            DataModel(fName: "Rahul", lName: "Rajput"),
            DataModel(fName: "Suraj", lName: "Bhimte"),
            DataModel(fName: "Raj", lName: "Patil")
        ]
        
        tableViewOutlet.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        searchBarSetup()
    }
    
    private func dataModelSetup()
    {
        arrData =
        [
            DataModel(fName: "Pradip", lName: "Khandare"),
            DataModel(fName: "Shreyash", lName: "Jadhav"),
            DataModel(fName: "Suraj", lName: "Kokre"),
            DataModel(fName: "Disha", lName: "Gujrathi"),
            DataModel(fName: "Mona", lName: "Pawar"),
            DataModel(fName: "Shubham", lName: "Jawale"),
            DataModel(fName: "Shubham", lName: "Todkar"),
            DataModel(fName: "Vishal", lName: "Kadiya"),
            DataModel(fName: "Rahul", lName: "Rajput"),
            DataModel(fName: "Suraj", lName: "Bhimte"),
            DataModel(fName: "Raj", lName: "Patil")
        ]
    }
    
    private func searchBarSetup()
    {
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
    }
}

extension ViewController: UISearchResultsUpdating
{
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text else { return }
        if searchText == ""
        {
            dataModelSetup()
        }else {
            dataModelSetup()
            arrData = arrData.filter{
                $0.fName.contains(searchText)
            }
        }
        tableViewOutlet.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = arrData[indexPath.row].fName
        cell.detailTextLabel?.text = arrData[indexPath.row].lName
        return cell
    }

}

