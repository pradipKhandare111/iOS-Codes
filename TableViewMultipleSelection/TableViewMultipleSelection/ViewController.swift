//
//  ViewController.swift
//  TableViewMultipleSelection
//
//  Created by NTS on 14/09/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var myTable: UITableView!
    var names = [
    "Pradip", "Golu", "Raja", "Vikram", "Rajesh", "Tukya", "Ajay", "Mahesh"
    ]
    
    var items : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem)
    {
        items.removeAll()
        if let selectedRows = myTable.indexPathsForVisibleRows
        {
            for indexpath in selectedRows
            {
                items.append(names[indexpath.row])
            }
            
            print("----You have selected multiple items")
            
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
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
        
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let selectedCell: UITableViewCell = myTable.cellForRow(at: indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.green

    }
    

}
