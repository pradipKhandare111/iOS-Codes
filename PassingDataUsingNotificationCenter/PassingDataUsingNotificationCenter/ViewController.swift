//
//  ViewController.swift
//  PassingDataUsingNotificationCenter
//
//  Created by NTS on 26/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageViewl: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification: )), name: .facebook, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(notification: )), name: .twitter, object: nil)
    }
    
    @objc
    func facebook(notification: Notification)
    {
        label.text = "Facebook"
        imageViewl.image = UIImage(imageLiteralResourceName: "3D_Square_with_Facebook_Logo.jpg")
    }
    
    @objc
    func twitter(notification: Notification)
    {
        label.text = "Twitter"
        imageViewl.image = UIImage(imageLiteralResourceName: "icons8-twitter-24.png")
    }

    @IBAction func chooseSocialPressed(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
extension Notification.Name
{
   
    static let facebook = Notification.Name("Facebook")
    static let twitter = Notification.Name("Twitter")
}
