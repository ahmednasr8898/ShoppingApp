//
//  RegisterViewController.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/5/21.
//
import UIKit

class RegisterViewController: UIViewController {
    
    let topStackView = UIStackView()
    let noonImageView = UIImageView()
    let cancelImage = UIImageView()
    let createnoonLabel = UILabel()
    let firstNameStackView = UIStackView()
    let firstNameLabel = UILabel()
    let firstNameTextField = UITextField()
    let lastNameStackView = UIStackView()
    let lastNameLabel = UILabel()
    let lastNameTextField = UITextField()
    let emailStackView = UIStackView()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let passwordStackView = UIStackView()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let showPasswordButton = UIButton()
    let signupButton = UIButton()
    let haveAccountButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTopStackVeiw()
        setUpNoonImage()
        setUpCancelImage()
        setUpCreateNoonLabel()
        setUpFirstNameStackView()
        setUpFirstNameLabel()
        setUpFirstNameTextField()
        setUpLastNameStackView()
        setUpLastNameLabel()
        setUpLastNameTextField()
        setUpEmailStackView()
        setUpEmailLabel()
        setUpEmailTextField()
        setUpPasswordStackView()
        setUpPasswordLabel()
        setUpPasswordTextField()
        setUpSignupButton()
        setUpHaveAccountButton()
        setUpShowPassword()
    }
}
