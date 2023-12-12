import UIKit

class ViewController: UIViewController {

    @IBOutlet var myCollectionView: UICollectionView!
    
    let productTypeName : [String] = ["Books", "Kitchen", "Grocery", "Shoes", "Mens Wears", "kids wear", "electronics"]
    
    let productImages: [String]  = ["books", "kitchen", "grocery", "shoes", "mens", "kids", "electronics"]
    
//    let productImages : [UIImage] = [UIImage(named: "books")!, UIImage(named: "kitchen")!, UIImage(named: "grocery")!, UIImage(named: "shoes")!,
//                                        UIImage(named: "shoes")!, UIImage(named: "mens")!, UIImage(named: "kids")!, UIImage(named: "electronics")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productTypeName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImage.image = UIImage(named: productImages[indexPath.row])
        //cell.myImage.image = productImages[indexPath.row]
        cell.myLabel.text = productTypeName[indexPath.row]
        
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width)/2
        return CGSize(width: size, height: size)
    }
    
    
}
