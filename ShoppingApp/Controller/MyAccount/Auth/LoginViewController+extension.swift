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
    func setUpAhlanLabel(){
        view.addSubview(ahlanLabel)
        ahlanLabel.translatesAutoresizingMaskIntoConstraints = false
        ahlanLabel.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 12).isActive = true
        ahlanLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpEmailStackView(){
        view.addSubview(emailStackView)
        emailStackView.translatesAutoresizingMaskIntoConstraints = false
        emailStackView.topAnchor.constraint(equalTo: ahlanLabel.bottomAnchor, constant: 32).isActive = true
        emailStackView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        emailStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        emailStackView.addArrangedSubview(emailLabel)
        emailStackView.addArrangedSubview(emailTextField)
      
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.heightAnchor.constraint(equalToConstant: 42).isActive = true
    }
    func setUpPasswordStackView(){
        view.addSubview(passwordStackView)
        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
        passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 32).isActive = true
        passwordStackView.widthAnchor.constraint(equalTo: emailStackView.widthAnchor).isActive = true
        passwordStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.heightAnchor.constraint(equalToConstant: 42).isActive = true
    }
    func setUpShowPassword(){
        passwordTextField.addSubview(showPasswordButton)
        showPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        showPasswordButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor).isActive = true
        showPasswordButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -6).isActive = true
    }
    func setUpForgotPassword(){
        view.addSubview(forgotButton)
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        forgotButton.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant: 30).isActive = true
        forgotButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor).isActive = true
    }
    func setUpSigninButton(){
        view.addSubview(signinButton)
        signinButton.translatesAutoresizingMaskIntoConstraints = false
        signinButton.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 25).isActive = true
        signinButton.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        signinButton.heightAnchor.constraint(equalToConstant: view.frame.height * 0.07).isActive = true
        signinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpHaveAccountButton(){
        view.addSubview(haveAccountButton)
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.topAnchor.constraint(equalTo: signinButton.bottomAnchor, constant: 30).isActive = true
        haveAccountButton.leadingAnchor.constraint(equalTo: emailStackView.leadingAnchor).isActive = true
    }
}
