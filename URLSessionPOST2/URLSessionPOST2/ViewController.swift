//
//  ViewController.swift
//  URLSessionPOST2
//
//  Created by NTS on 23/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var uidTxt: UITextField!
    @IBOutlet weak var ttileTxt: UITextField!
    @IBOutlet weak var bodyTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func postBtnPressed(_ sender: UIButton) 
    {
        self.postSetup()
    }
}

extension ViewController
{
    func postSetup()
    {
        guard let uid = self.uidTxt.text else { return }
        guard let title = self.ttileTxt.text else { return }
        guard let body = self.bodyTxt.text else { return }
        
        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts"){
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            
            var parameters : [String: Any] = [
                "userId": uid,
                "title": title,
                "body": body
            ]
            
            request.httpBody = parameters.percentEsvaped().data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {
                    if error == nil {
                        print(error?.localizedDescription ?? "unknown error")
                    }
                    return
                }
                
                if let response = response as? HTTPURLResponse {
                    guard (200...299) ~= response.statusCode else { return }
                    print(response.statusCode)
                    print(response)
                }
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch let error{
                    print(error.localizedDescription)
                }
                
            } .resume()
            
        }
    }
}


extension Dictionary
{
    func percentEsvaped() -> String {
        return map {(key, value) in
            let escapeKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            let escapeValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            return escapeKey + "=" + escapeValue
        }
        .joined(separator: "&")
    }
}


extension CharacterSet
{
    static let uqa: CharacterSet = {
        let generalDelimitersToEncode = ":#[]@"
        let subDelimitersToEncode = "!$&()'+*=:,"
        var allowed = CharacterSet.uqa
        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        return allowed
    }()
}
