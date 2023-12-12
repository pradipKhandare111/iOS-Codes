//
//  ViewController.swift
//  UITableViewCheckMarkSingle
//
//  Created by NTS on 14/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    
    let phoneList = ["iphone 10", "iphone 11", "iphone 12", "iphone 13", "iphone 14", "iphone 14 pro", "iphone 15", "iphone XR"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.tableFooterView = UIView()
        
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
        print("You have selected phone \(phoneList[indexPath.row])")
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        myTable.cellForRow(at: indexPath)?.accessoryType = .none
        print("you have deselect phone \(phoneList[indexPath.row])")
    }
}
