//
//  ViewController.swift
//  URLSessionPost1
//
//  Created by NTS on 23/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtUid: UITextField!
    @IBOutlet weak var tstTitle: UITextField!
    @IBOutlet weak var txtBody: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func postButtonClicked(_ sender: UIButton) {
        self.setupPostMethod()
    }
    
}

//https://jsonplaceholder.typicode.com/posts
extension ViewController
{
    func setupPostMethod(){
        guard let uid = self.txtUid.text else { return }
        guard let title = self.tstTitle.text else { return }
        guard let body = self.txtBody.text else { return }
        
        if let url = URL(string:  ) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            let parameters : [String: Any] = [
                "userId" : uid,
                "title" : title,
                "body" : body
            ]
            request.httpBody = parameters.percentEscaped().data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {
                    if error == nil{
                        print(error?.localizedDescription ?? "unknown error")
                    }
                    return
                }
                if let responce = response as? HTTPURLResponse {
                    guard (200...299) ~= responce.statusCode else { return }
                    print(responce.statusCode)
                    print(responce)
                }
                
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch let error {
                    print(error.localizedDescription)
                    
                }
            } .resume()
            
        }
    }
}

extension Dictionary
{
    func percentEscaped() -> String {
        return map { (key, value) in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            return escapedKey + "=" + escapedValue
        }
        .joined(separator: "&")
    }
}

extension CharacterSet
{
    static let uqa: CharacterSet = {
        let generalDelimitersToEncode = ":#[]@"
        let subDelimitersToEncode = "!$&'()*+,:="
        var allowed = CharacterSet.uqa
        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        return allowed
    }()
}
