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
        ProductVeiw.layer.borderWidth = 1
        ProductVeiw.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //offerLabel.backgroundColor = #colorLiteral(red: 0.223399566, green: 1, blue: 0.3234438853, alpha: 1)
    }
}
