//
//  ShopNowTableViewCell.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/6/21.
//
import UIKit

class ShopNowTableViewCell: UITableViewCell {

    @IBOutlet weak var productCollectionView: UICollectionView!
    let productStoryImages = [UIImage(named: "st-1"), UIImage(named: "st-2"),UIImage(named: "st-3"),UIImage(named: "st-4"), UIImage(named: "st-5"), UIImage(named: "st-6"), UIImage(named: "st-7"),UIImage(named: "st-8")]
    let productStoryName = ["Baby","Mobile","Fashion","Kitchen","Grocery","TVs","Beauty","Electronics"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
    }
    func setUpCollectionView(){
        productCollectionView.register(UINib(nibName: "ProductStoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductStoryCollectionViewCell")
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
}
extension ShopNowTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductStoryCollectionViewCell", for: indexPath) as! ProductStoryCollectionViewCell
        cell.productImageView.image = productStoryImages[indexPath.row]
        cell.productNameLabel.text = productStoryName[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 85/*collectionView.frame.width * 0.25*/, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 4)
    }
}
