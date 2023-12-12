//
//  ViewController.swift
//  SwiftyJson1
//
//  Created by NTS on 09/11/23.
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
            do{
                let json = try JSON(data: data)
            
                for title in json.arrayValue
                {
                    self.arrayData.append(JsonModel(json: title))
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                //print(self.arrayData)
                //print(json)
              
            }catch{
                print(error.localizedDescription)
            }
        }
        .resume()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell

        cell.title.text = arrayData[indexPath.row].title
        cell.body.text = arrayData[indexPath.row].body
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        tableVC.modelData = arrayData[indexPath.row]
        self.navigationController?.pushViewController(tableVC, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}

