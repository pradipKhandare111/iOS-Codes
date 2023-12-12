//
//  MyTableViewCell.swift
//  CollectionViewWithTableViewSecond
//
//  Created by NTS on 18/09/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet var myCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension MyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallary.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! MyCollectionViewCell
        cell.myImage.image = UIImage(named: eData[myCollectionView.tag].imageGallary[indexPath.row])
        return cell
    }
    
    
}
