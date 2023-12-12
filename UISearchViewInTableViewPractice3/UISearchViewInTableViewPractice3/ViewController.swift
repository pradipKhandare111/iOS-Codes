



import UIKit

class ViewController: UIViewController, UISearchBarDelegate, UISearchControllerDelegate {
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var cars = [String]()
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cars = ["Swift", "Ferrari", "BMW", "Mercedese", "Lamborgini", "Scorpio", "Honda City"]
        tableViewOutlet.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
        dataForEmptyField()
    }
    
    private func dataForEmptyField()
    {
        cars = ["Swift", "Ferrari", "BMW", "Mercedese", "Lamborgini", "Scorpio", "Honda City"]
    }


}


extension ViewController: UISearchResultsUpdating
{
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text else { return }
        if searchText == ""
        {
            dataForEmptyField()
        }else{
            dataForEmptyField()
            cars = cars.filter{
                $0.contains(searchText)
            }
        }
        tableViewOutlet.reloadData()
    }
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = cars[indexPath.row]
        return cell
    }
    
    
    
    
    
}

