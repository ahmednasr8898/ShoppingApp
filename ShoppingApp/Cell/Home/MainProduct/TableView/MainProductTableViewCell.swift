//
//  MainProductTableViewCell.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/5/21.
//

import UIKit

class MainProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productCollectionView: UICollectionView!
    let arrOfProduct = [ProductDetailse]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpCollectionView()
    }
    func setUpCollectionView(){
        productCollectionView.register(UINib(nibName: "MainProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MainProductCollectionViewCell")
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
}
extension MainProductTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainProductCollectionViewCell", for: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.4, height: 300)
    }
}

struct ProductDetailse {
    let ProductImage: UIImageView
    let productDescription: String
    let productProce: String
}
