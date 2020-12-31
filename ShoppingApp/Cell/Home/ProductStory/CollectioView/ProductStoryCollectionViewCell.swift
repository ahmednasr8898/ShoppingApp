//
//  ProductStoryCollectionViewCell.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 12/31/20.
//
import UIKit

class ProductStoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productImageView.layer.borderWidth = 2
        productImageView.layer.borderColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        productImageView.layer.cornerRadius = productImageView.frame.height / 2
    }
}
