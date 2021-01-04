//
//  LoginController+extension.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/4/21.
//
import UIKit
extension LoginViewController{
    func setUpTopStackVeiw(){
        view.addSubview(topStackView)
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        topStackView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.85).isActive = true
        topStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topStackView.heightAnchor.constraint(equalToConstant: view.frame.height * 0.08).isActive = true
    }
    func setUpNoonImage(){
        topStackView.addArrangedSubview(noonImageView)
        noonImageView.translatesAutoresizingMaskIntoConstraints = false
        noonImageView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.26).isActive = true
    }
    func setUpCancelImage(){
        topStackView.addArrangedSubview(cancelImage)
        cancelImage.translatesAutoresizingMaskIntoConstraints = false
        cancelImage.widthAnchor.constraint(equalToConstant: view.frame.width * 0.06).isActive = true
    }
}
