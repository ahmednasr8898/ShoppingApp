//
//  ProductStoryTableViewCell.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 12/31/20.
//
import UIKit

class ProductStoryTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    let productStoryImages = [UIImage(named: "st-1"), UIImage(named: "st-2"),UIImage(named: "st-3"),UIImage(named: "st-4"), UIImage(named: "st-5"), UIImage(named: "st-6"), UIImage(named: "st-7"),UIImage(named: "st-8")]
    let productStoryName = ["Baby","Mobile","Fashion","Kitchen","Grocery","TVs","Beauty","Electronics"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
    }
    func setUpCollectionView(){
        collectionView.register(UINib(nibName: "ProductStoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductStoryCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}
extension ProductStoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productStoryImages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductStoryCollectionViewCell", for: indexPath) as! ProductStoryCollectionViewCell
        cell.productNameLabel.text = productStoryName[indexPath.row]
        cell.productImageView.image = productStoryImages[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.23, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}
