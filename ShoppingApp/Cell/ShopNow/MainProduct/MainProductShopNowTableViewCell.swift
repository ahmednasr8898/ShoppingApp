//
//  MainProductShopNowTableViewCell.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/6/21.
//
import UIKit

class MainProductShopNowTableViewCell: UITableViewCell {

    @IBOutlet weak var productCollectionView: UICollectionView!
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
extension MainProductShopNowTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainProductCollectionViewCell", for: indexPath) as! MainProductCollectionViewCell
        cell.ProductVeiw.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        cell.ProductVeiw.layer.borderWidth = 1
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.475, height: 310)
        //300
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }
}
