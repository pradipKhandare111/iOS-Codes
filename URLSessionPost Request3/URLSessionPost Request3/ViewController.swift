//
//  ViewController.swift
//  URLSessionPost Request3
//
//  Created by NTS on 08/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldUserId: UITextField!
    @IBOutlet weak var textfieldTitle: UITextField!
    @IBOutlet weak var textfieldBody: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func postButtonPressed(_ sender: UIButton) {
        postMethodSetup()
    }
    

}

extension ViewController
{
    func postMethodSetup() {
        guard let uid = self.textFieldUserId.text else { return }
        guard let title = self.textfieldTitle.text else { return }
        guard let body = self.textfieldBody.text else { return }
        
        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/")
        {
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            
            let parameters : [String : Any] = [
                "userId": uid,
                "title": title,
                "body": body
            ]
            
            request.httpBody = parameters.percentEscaped().data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {
                    if error == nil {
                        print(error?.localizedDescription ?? "There is an unknown error")
                    }
                    return
                }
                
                if let response = response as? HTTPURLResponse{
                    guard(200 ... 299) ~= response.statusCode else {
                        print("Status code is \(response.statusCode)")
                        print(response)
                        return
                    }
                }
                
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch let error{
                    print(error.localizedDescription)
                }
            }
            .resume()
        }
    }
}

extension Dictionary
{
    func percentEscaped() -> String {
        return map {(key, value) in
            let escapedkey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            return escapedkey+"="+escapedValue
        }
        .joined(separator: "&")
    }
}

extension CharacterSet
{
    static let urlQueryValueallowed :  CharacterSet = {
        let generalDeliminaterstoEncode = ":#[]@"
        let subDeliminatersToEncode = "!$&'()*+,;="
        var allowed = CharacterSet.urlQueryValueallowed
        allowed.remove(charactersIn: "\(generalDeliminaterstoEncode)\(subDeliminatersToEncode)")
        return allowed
    }()
}
