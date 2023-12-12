//
//  ViewController.swift
//  MultipleCellSelectionPractice
//
//  Created by NTS on 31/10/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableViewOutlet: UITableView!
    var arrData = [String]()
    var selectArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getData()
        tableViewOutlet.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
       // self.tableViewOutlet.allowsMultipleSelection = true
        self.tableViewOutlet.isEditing = true
        self.tableViewOutlet.allowsMultipleSelectionDuringEditing = true
    }

    func getData()
    {
        arrData = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    }
    
    @IBAction func nextButtonCkicked(_ sender: UIButton) {
        print(selectArray)
        
    }
    
    @IBAction func multipleSelectionButtonClicked(_ sender: UIButton) {
        
        self.selectArray.removeAll()
        
        if sender.isSelected{
            for row in 0..<arrData.count
            {
                self.tableViewOutlet.selectRow(at: IndexPath(row: row, section: 0), animated: false, scrollPosition: .none)
            }
            sender.isSelected = false
            sender.setImage(UIImage(named: "select"), for: .normal)
            selectArray = arrData
        }else {
            for row in 0..<arrData.count
            {
                self.tableViewOutlet.deselectRow(at: IndexPath(row: row, section: 0), animated: false)
            }
            sender.isSelected = true
            sender.setImage(UIImage(named: "unselect"), for: .normal)
            self.selectArray.removeAll()
        }
        
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrData[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectDeSelectCell(tableView: tableView, indexpath: indexPath)
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.selectDeSelectCell(tableView: tableView, indexpath: indexPath)
        
    }
}

extension ViewController{
    
    //Select and deselect methods.
    
    func selectDeSelectCell(tableView: UITableView, indexpath: IndexPath)
    {
        self.selectArray.removeAll()
        if let arr = tableView.indexPathsForSelectedRows{
            for index in arr{
                selectArray.append(arrData[index.row])
            }
            
        }
        print(selectArray)
    }
}
