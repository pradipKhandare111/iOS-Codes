
import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var dataArray = [String]()
    var selectArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getData()
        tableViewOutlet.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableViewOutlet.isEditing = true
        self.tableViewOutlet.allowsMultipleSelectionDuringEditing = true
    }
    

    func getData()
    {
        dataArray  = ["Pradip", "Akshay", "Vijay", "Shubham", "Pandurang", "Rajesh","Pradip", "Akshay", "Vijay", "Shubham", "Pandurang", "Rajesh"]
   
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton)
    {
        print(selectArray)
    }
    
    @IBAction func multipleSelectionButtonPressed(_ sender: UIButton) 
    {
        self.selectArray.removeAll()
        
        if sender.isSelected
        {
            for row in 0..<dataArray.count
            {
                self.tableViewOutlet.selectRow(at: IndexPath(row: row, section: 0), animated: false, scrollPosition: .none)
            }
            sender.isSelected = false
            sender.setImage(UIImage(named: "select"), for: .normal)
            selectArray = dataArray
        }else {
            for row in 0..<dataArray.count
            {
                self.tableViewOutlet.deselectRow(at: IndexPath(row: row, section: 0), animated: false)
            }
            sender.isSelected = true
            sender.setImage(UIImage(named: "deselect"), for: .normal)
            self.selectArray.removeAll()
        }
    }
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectDeSelectCell(tableView: tableView, indexpath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.selectDeSelectCell(tableView: tableView, indexpath: indexPath)
    }
    
}

extension ViewController
{
    
    func selectDeSelectCell(tableView: UITableView, indexpath: IndexPath)
    {
        self.selectArray.removeAll()
        if let ar = tableView.indexPathsForSelectedRows
        {
            for index in ar
            {
                selectArray.append(dataArray[index.row])
            }
        }
        
    }
}

