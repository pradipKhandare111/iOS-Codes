//
//  ViewController.swift
//  UITableViewCustomCellCustomSelection
//
//  Created by NTS on 15/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    
    var phoneCompanies = ["Apple", "Samsung", "Nokia", "Moto", "Oppo", "Lava", "Vivo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.tableFooterView = UIView()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return phoneCompanies.count
        //number of rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCellClass
        cell.myLabel.text = phoneCompanies[indexPath.row]
        cell.miImage.image = UIImage(named: "uncheck")
        cell.selectionStyle = .none
       return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = myTable.cellForRow(at: indexPath) as! myTableViewCellClass
        if cell.isCheck == false
        {
            cell.isCheck = true
            cell.miImage.image = UIImage(named: "check")
            print("You have selected \(phoneCompanies[indexPath.row])")
        } else {
            cell.isCheck = false
            cell.miImage.image = UIImage(named: "uncheck")
            print("you have deselected \(phoneCompanies[indexPath.row])")
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = myTable.cellForRow(at: indexPath) as! myTableViewCellClass
        cell.miImage.image = UIImage(named: "uncheck")
        print("You have deselected company \(phoneCompanies[indexPath.row])")
    }
    
    
}

