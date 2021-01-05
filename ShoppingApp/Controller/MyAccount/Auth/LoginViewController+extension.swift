//
//  LoginController+extension.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/4/21.
//
import UIKit
extension LoginViewController{
    func setUpTopStackVeiw(){
        //Properties
        topStackView.axis = .horizontal
        topStackView.distribution = .equalSpacing
        //Constraint
        view.addSubview(topStackView)
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:
                                            view.frame.height * 20/896).isActive = true
        topStackView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.85).isActive = true
        topStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topStackView.heightAnchor.constraint(equalToConstant: view.frame.height * 0.08).isActive = true
    }
    func setUpNoonImage(){
        //Properties
        noonImageView.contentMode = .scaleAspectFit
        noonImageView.image = #imageLiteral(resourceName: "noon")
        //Constraint
        topStackView.addArrangedSubview(noonImageView)
        noonImageView.translatesAutoresizingMaskIntoConstraints = false
        noonImageView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.26).isActive = true
    }
    func setUpCancelImage(){
        //Properties
        cancelImage.contentMode = .scaleAspectFit
        cancelImage.image = UIImage(systemName: "xmark")
        cancelImage.tintColor = #colorLiteral(red: 0.2383217293, green: 0.2383217293, blue: 0.2383217293, alpha: 1)
        //Constraint
        topStackView.addArrangedSubview(cancelImage)
        cancelImage.translatesAutoresizingMaskIntoConstraints = false
        cancelImage.widthAnchor.constraint(equalToConstant: view.frame.width * 0.06).isActive = true
        //Handel
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(cancelOnClick(sender:)))
        cancelImage.addGestureRecognizer(tapGesture)
        cancelImage.isUserInteractionEnabled = true
    }
    @objc func cancelOnClick(sender: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
    func setUpAhlanLabel(){
        //Properties
        ahlanLabel.text = "Ahlan! Welcome back!"
        ahlanLabel.font = UIFont.systemFont(ofSize: 28)
        ahlanLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        //Constraint
        view.addSubview(ahlanLabel)
        ahlanLabel.translatesAutoresizingMaskIntoConstraints = false
        ahlanLabel.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant:
                                            view.frame.height * 12/896).isActive = true
        ahlanLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpEmailStackView(){
        //Properties
        emailStackView.axis = .vertical
        emailStackView.distribution = .fillEqually
        emailStackView.spacing = 12
        //Constraint
        view.addSubview(emailStackView)
        emailStackView.translatesAutoresizingMaskIntoConstraints = false
        emailStackView.topAnchor.constraint(equalTo: ahlanLabel.bottomAnchor, constant:
                                                view.frame.height * 32/896).isActive = true
        emailStackView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        emailStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailStackView.addArrangedSubview(emailLabel)
        emailStackView.addArrangedSubview(emailTextField)
    }
    func setUpEmailLabel(){
        //Properties
        emailLabel.text = "Email"
        emailLabel.font = UIFont.systemFont(ofSize: 15)
        emailLabel.textColor = #colorLiteral(red: 0.606359294, green: 0.5660213921, blue: 0.1940417385, alpha: 1)
    }
    func setUpEmailTextField(){
        //Properties
        emailTextField.placeholder = "Please enter your email address"
        //Constraint
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.heightAnchor.constraint(equalToConstant:
                                                view.frame.height * 42/896).isActive = true
    }
    func setUpPasswordStackView(){
        //Properties
        passwordStackView.axis = .vertical
        passwordStackView.distribution = .fillEqually
        passwordStackView.spacing = 12
        //Constraint
        view.addSubview(passwordStackView)
        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
        passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant:
                                                view.frame.height * 32/896).isActive = true
        passwordStackView.widthAnchor.constraint(equalTo: emailStackView.widthAnchor).isActive = true
        passwordStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordTextField)
    }
    func setUpPasswordLabel(){
        //Properties
        passwordLabel.text = "Password"
        passwordLabel.font = UIFont.systemFont(ofSize: 15)
        passwordLabel.textColor = #colorLiteral(red: 0.606359294, green: 0.5660213921, blue: 0.1940417385, alpha: 1)
    }
    func setUpPasswordTextField(){
        //Properties
        passwordTextField.placeholder = "Please enter your password"
        //Constraint
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.heightAnchor.constraint(equalToConstant:
                                                    view.frame.height * 42/896).isActive = true
    }
    func setUpShowPassword(){
        //Properties
        showPasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
        showPasswordButton.tintColor = UIColor.black
        showPasswordButton.addTarget(self, action: #selector(showPasswordOnClick(sender:)), for: .touchUpInside)
        //Constraint
        passwordTextField.addSubview(showPasswordButton)
        showPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        showPasswordButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor).isActive = true
        showPasswordButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -6).isActive = true
    }
    @objc func showPasswordOnClick(sender: UIButton){
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            print("selected")
            showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            passwordTextField.isSecureTextEntry = false
        }else{
            print("none selected")
            showPasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
            passwordTextField.isSecureTextEntry = true
        }
    }
    func setUpForgotPassword(){
        //Properties
        let attributedString = NSAttributedString(string: "Forgot your password?", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4665843588, green: 0.4665843588, blue: 0.4665843588, alpha: 1)])
        forgotButton.setAttributedTitle(attributedString, for: .normal)
        //Constraint
        view.addSubview(forgotButton)
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        forgotButton.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant:
                                            view.frame.height * 30/896).isActive = true
        forgotButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor).isActive = true
    }
    func setUpSigninButton(){
        //Properties
        let font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        let attributedString = NSAttributedString(string: "Sign In", attributes: [NSAttributedString.Key.font : font as Any, NSAttributedString.Key.foregroundColor: UIColor.white])
        signinButton.setAttributedTitle(attributedString, for: .normal)
        signinButton.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        //Constraint
        view.addSubview(signinButton)
        signinButton.translatesAutoresizingMaskIntoConstraints = false
        signinButton.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant:
                                            view.frame.height * 25/896).isActive = true
        signinButton.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        signinButton.heightAnchor.constraint(equalToConstant: view.frame.height * 0.07).isActive = true
        signinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpHaveAccountButton(){
        //Properties
        let attributedString = NSMutableAttributedString(string: "Dont't have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4665843588, green: 0.4665843588, blue: 0.4665843588, alpha: 1)])
        attributedString.append(NSAttributedString(string: "sign Up", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: UIColor.black]))
        haveAccountButton.setAttributedTitle(attributedString, for: .normal)
        //Constraint
        view.addSubview(haveAccountButton)
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.topAnchor.constraint(equalTo: signinButton.bottomAnchor, constant:
                                                view.frame.height * 30/896).isActive = true
        haveAccountButton.leadingAnchor.constraint(equalTo: emailStackView.leadingAnchor).isActive = true
    }
}
