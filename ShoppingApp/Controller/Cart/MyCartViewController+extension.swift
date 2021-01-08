//
//  MyCartViewController+extension.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/8/21.
//
import Foundation
import UIKit
extension MyCartViewController{
    func setUpMyWishLabel(){
        //Properties
        myWishListLabel.text = "My WishList"
        myWishListLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        myWishListLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 23)
        myWishListLabel.numberOfLines = 0
        //Constraint
        view.addSubview(myWishListLabel)
        myWishListLabel.translatesAutoresizingMaskIntoConstraints = false
        myWishListLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        myWishListLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    func setUpCartTableView(){
        tableViewConstraint()
        cartTableView.delegate = self
        cartTableView.dataSource = self
        cartTableView.register(UINib(nibName: "MyCartTableViewCell", bundle: nil), forCellReuseIdentifier: "MyCartTableViewCell")
        cartTableView.rowHeight = 350
        cartTableView.tableFooterView = UIView()
        cartTableView.separatorStyle = .none
    }
    func tableViewConstraint(){
        view.addSubview(cartTableView)
        cartTableView.translatesAutoresizingMaskIntoConstraints = false
        cartTableView.topAnchor.constraint(equalTo: myWishListLabel.bottomAnchor, constant: 12).isActive = true
        cartTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        cartTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        cartTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }  
}
