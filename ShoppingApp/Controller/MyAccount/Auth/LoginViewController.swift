//
//  LoginViewController.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/4/21.
//
import UIKit

class LoginViewController: UIViewController {
    
    let topStackView: UIStackView = {
       let st = UIStackView()
        st.axis = .horizontal
        st.distribution = .equalSpacing
        return st
    }()
    let noonImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = #imageLiteral(resourceName: "noon")
        return img
    }()
    
    let cancelImage: UIImageView = {
       let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(systemName: "xmark")
        img.tintColor = #colorLiteral(red: 0.2383217293, green: 0.2383217293, blue: 0.2383217293, alpha: 1)
        return img
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTopStackVeiw()
        setUpNoonImage()
        setUpCancelImage()
    

    }
}
