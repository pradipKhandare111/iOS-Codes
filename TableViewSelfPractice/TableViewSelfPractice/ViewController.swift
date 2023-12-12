//
//  ViewController.swift
//  TableViewSelfPractice
//
//  Created by NTS on 15/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    
    let names = ["Pradip", "Rajesh", "Vijay", "Vikram", "Ajay", "Viththal", "Raj", "Vishwas", "Roy", "John", "tommy"]
//    let names = [
//        UIImage(imageLiteralResourceName: "suset1"),
//        UIImage(imageLiteralResourceName: "suset2"),
//        UIImage(imageLiteralResourceName: "suset3"),
//        UIImage(imageLiteralResourceName: "suset4"),
//        UIImage(imageLiteralResourceName: "suset5")
//    ]
    
    var storeName : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        storeName.removeAll()
        if let selectedRows = myTable.indexPathsForVisibleRows
        {
            for indexpath in selectedRows
            {
                storeName.append(names[indexpath.row])
            }
            
            print("===YOU HAVE SELECTED MULTIPLE ROWS")
            
            for name in storeName
            {
                print(name)
            }
        }
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
//        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedCell: UITableViewCell = myTable.cellForRow(at: indexPath)!
//        selectedCell.contentView.backgroundColor = UIColor.green
        
        let selectedCell: UITableViewCell = myTable.cellForRow(at: indexPath)!
        selectedCell.contentView.backgroundColor = .none
        myTable.cellForRow(at: indexPath)?.accessoryType = .checkmark
        print("you have selected \(names[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        myTable.cellForRow(at: indexPath)?.accessoryType = .none
        print("you have deselect \(names[indexPath.row])")
    }
    
}

