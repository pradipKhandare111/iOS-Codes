//
//  ViewController.swift
//  UICoillectionViewThird
//
//  Created by NTS on 18/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var myCollection: UICollectionView!
    
    let phoneList : [String] = ["iphone 8 plus", "iphone 12 pro", "iphone 13 pro max", "iphone 13 pro", "iphone 14"]
    let phoneImages : [String] = ["iphone-8-plus", "iphone-12-pro", "iphone-13-pro-max", "iphone-13-pro", "iphone-14"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return phoneList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImage.image = UIImage(named: phoneImages[indexPath.row])
        cell.myLabel.text = phoneList[indexPath.row]
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size =  (collectionView.frame.width - 20)/2
        return CGSize(width: size, height: size)
    }
    
    
    
}


