//
//  ViewController.swift
//  UITableViewCheckmarkMultiple
//
//  Created by NTS on 14/09/23.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myTable: UITableView!
    
    let phoneList = ["iphone 10", "iphone 11", "iphone 12", "iphone 13", "iphone 14", "iphone 14 pro", "iphone 15", "iphone XR"]
    var items : [String] = []
    
    override func viewDidLoad()
    {
       super.viewDidLoad()
        myTable.allowsMultipleSelection = true
    }
    
    
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        
        items.removeAll()
        if let selectedRows = myTable.indexPathsForSelectedRows
        {
            for iPath in selectedRows
            {
                items.append(phoneList[iPath.row])
            }
            
            print("You have selected items --")
            for item in items
            {
                print(item)
            }
        }
    }
    

    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = phoneList[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTable.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        myTable.cellForRow(at: indexPath)?.accessoryType = .none
    }
    
    
    
    
}

