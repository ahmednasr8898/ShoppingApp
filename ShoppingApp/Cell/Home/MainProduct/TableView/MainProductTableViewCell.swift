//
//  MainProductTableViewCell.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/5/21.
//

import UIKit

class MainProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var SectionLabel: UILabel!
    @IBOutlet weak var showNowButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpCollectionView()
        
        showNowButton.layer.borderWidth = 0.9
        showNowButton.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
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
        //300
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
    }
}
