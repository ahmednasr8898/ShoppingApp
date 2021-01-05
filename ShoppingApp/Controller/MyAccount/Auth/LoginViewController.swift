//
//  LoginViewController.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/4/21.
//
import UIKit

class LoginViewController: UIViewController {

    let topStackView = UIStackView()
    let noonImageView = UIImageView()
    let cancelImage = UIImageView()
    let ahlanLabel = UILabel()
    let emailStackView = UIStackView()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let passwordStackView = UIStackView()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let showPasswordButton = UIButton()
    let forgotButton = UIButton()
    let signinButton = UIButton()
    let haveAccountButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTopStackVeiw()
        setUpNoonImage()
        setUpCancelImage()
        setUpAhlanLabel()
        setUpEmailStackView()
        setUpEmailLabel()
        setUpEmailTextField()
        setUpPasswordStackView()
        setUpPasswordLabel()
        setUpPasswordTextField()
        setUpForgotPassword()
        setUpSigninButton()
        setUpHaveAccountButton()
        setUpShowPassword()
    }
}
