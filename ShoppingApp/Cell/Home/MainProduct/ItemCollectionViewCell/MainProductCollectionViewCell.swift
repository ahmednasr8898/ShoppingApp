//
//  MainProductCollectionViewCell.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/5/21.
//
import UIKit

class MainProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ProductVeiw: UIView!
    @IBOutlet weak var loveButton: UIButton!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var offerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
