//
//  ProductModel.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/7/21.
//
import Foundation
import UIKit
struct ProductModel {
    var titleSection: String
    var productDetails: [ProductDetails]
}
struct ProductDetails {
    var productImage: UIImage
    var productDescription: String
    var productPrice: String
}
