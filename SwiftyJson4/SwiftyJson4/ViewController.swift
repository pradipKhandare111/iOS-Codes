//
//  ViewController.swift
//  SwiftyJson4
//
//  Created by NTS on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayData = [JsonModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        jsonParsing()
    }

    func jsonParsing()
    {
     let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data else { return }
            do {
                let json = try JSON(data: data)
                for body in json.arrayValue
                {
                    self.arrayData.append(JsonModel(json: body))
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }catch {
                print(error.localizedDescription)
            }
        }
        .resume()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        cell.labelOutlet.text = arrayData[indexPath.row].body
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}

