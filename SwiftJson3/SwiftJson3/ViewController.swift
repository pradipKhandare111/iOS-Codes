//
//  ViewController.swift
//  SwiftJson3
//
//  Created by NTS on 09/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! 
    
    var arrayData = [jsonModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       jsonParsing()
    }

    
    func jsonParsing()
    {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data else { return }
            do{
                let json = try JSON(data: data)
                for title in json.arrayValue{
                    self.arrayData.append(jsonModel(json: title))
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }catch {
                print(error)
            }
        }
        .resume()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.titleLabel.text = arrayData[indexPath.row].title
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}

