//
//  ViewController.swift
//  UITableViewMultipleSelectiionCustomCell
//
//  Created by NTS on 15/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    let phoneList = ["iphone 10", "iphone 11", "iphone 12", "iphone 13", "iphone 14", "iphone 14 pro", "iphone 15", "iphone XR"]
    
    var selectedList : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        
        print("You have selected followqing mobile comopanies")
        for i in selectedList
        {
            print(phoneList[Int(i)!])
        }
    }
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellCustomClass
        cell.myImage.image = UIImage(named: "uncheck")
        cell.myLabel.text = phoneList[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellCustomClass
        cell.isChecked = true
        cell.myImage.image = UIImage(named: "check")
        selectedList.append("\(indexPath.row)")
        print("You have selected phone companies - \(phoneList[indexPath.row])")
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = myTable.cellForRow(at: indexPath) as! TableViewCellCustomClass
        cell.isChecked = false
        cell.myImage.image = UIImage(named: "Uncheck")
        let indexToRemove = selectedList.firstIndex(of: "\(indexPath.row)")
        selectedList.remove(at: indexToRemove!)
        print("You have deselected phone company \(phoneList[indexPath.row])")
        
    }
    
    
    
}


