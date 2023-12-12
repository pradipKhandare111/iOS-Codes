//
//  ViewController.swift
//  UISearchControllerInTableView
//
//  Created by NTS on 03/11/23.
//

import UIKit



struct DataModel
{
    var name: String = ""
}

class ViewController: UIViewController, UISearchBarDelegate, UISearchControllerDelegate {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var arrData = [DataModel]()
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            arrData =
                        [
                            DataModel(name: "Pradip"),
                            DataModel(name: "Akshay"),
                            DataModel(name: "Vijay"),
                            DataModel(name: "Raj"),
                            DataModel(name: "Tukaram"),
                            DataModel(name: "Shreyash"),
                            DataModel(name: "Vilas"),
                            DataModel(name: "Vikram"),
                            DataModel(name: "Shiva"),
                            DataModel(name: "Raja"),
                            DataModel(name: "Patil"),
                            DataModel(name: "Shubham"),
                            DataModel(name: "Akshat"),
                            DataModel(name: "Dipak"),
                            DataModel(name: "Shivraj"),
                            DataModel(name: "Sanjay")
                        ]
                        
        tableViewOutlet.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        searchBarSetup()
        dataWhenFieldIsEmpty()
    }
    
    private func dataWhenFieldIsEmpty()
    {
        arrData =
                        [
                            DataModel(name: "Pradip"),
                            DataModel(name: "Akshay"),
                            DataModel(name: "Vijay"),
                            DataModel(name: "Raj"),
                            DataModel(name: "Tukaram"),
                            DataModel(name: "Shreyash"),
                            DataModel(name: "Vilas"),
                            DataModel(name: "Vikram"),
                            DataModel(name: "Shiva"),
                            DataModel(name: "Raja"),
                            DataModel(name: "Patil"),
                            DataModel(name: "Shubham"),
                            DataModel(name: "Akshat"),
                            DataModel(name: "Dipak"),
                            DataModel(name: "Shivraj"),
                            DataModel(name: "Sanjay")
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
            dataWhenFieldIsEmpty()
        }else{
            dataWhenFieldIsEmpty()
            arrData = arrData.filter{
                $0.name.contains(searchText)
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
        cell.textLabel?.text = arrData[indexPath.row].name
        return cell
    }
    
    
}
