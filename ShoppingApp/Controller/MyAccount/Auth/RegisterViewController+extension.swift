//
//  RegisterViewController+extension.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/5/21.
//
import UIKit
extension RegisterViewController{
    func setUpTopStackVeiw(){
        view.addSubview(topStackView)
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:
                                            view.frame.height * 20/896).isActive = true
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
    func setUpCreateNoonLabel(){
        view.addSubview(createnoonLabel)
        createnoonLabel.translatesAutoresizingMaskIntoConstraints = false
        createnoonLabel.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant:
                                            view.frame.height * 12/896).isActive = true
        createnoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpFirstNameStackView(){
        view.addSubview(firstNameStackView)
        firstNameStackView.translatesAutoresizingMaskIntoConstraints = false
        firstNameStackView.topAnchor.constraint(equalTo: createnoonLabel.bottomAnchor, constant:
                                                view.frame.height * 32/896).isActive = true
        firstNameStackView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        firstNameStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        firstNameStackView.addArrangedSubview(firstNameLabel)
        firstNameStackView.addArrangedSubview(firstNameTextField)
      
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.heightAnchor.constraint(equalToConstant:
                                                view.frame.height * 42/896).isActive = true
    }
    func setUpLastNameStackView(){
        view.addSubview(lastNameStackView)
        lastNameStackView.translatesAutoresizingMaskIntoConstraints = false
        lastNameStackView.topAnchor.constraint(equalTo: firstNameStackView.bottomAnchor, constant:
                                                view.frame.height * 32/896).isActive = true
        lastNameStackView.widthAnchor.constraint(equalTo: firstNameStackView.widthAnchor).isActive = true
        lastNameStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        lastNameStackView.addArrangedSubview(lastNameLabel)
        lastNameStackView.addArrangedSubview(lastNameTextField)
        
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.heightAnchor.constraint(equalToConstant:
                                                    view.frame.height * 42/896).isActive = true
    }
    
    func setUpEmailStackView(){
        view.addSubview(emailStackView)
        emailStackView.translatesAutoresizingMaskIntoConstraints = false
        emailStackView.topAnchor.constraint(equalTo: lastNameStackView.bottomAnchor, constant:
                                                view.frame.height * 32/896).isActive = true
        emailStackView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        emailStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        emailStackView.addArrangedSubview(emailLabel)
        emailStackView.addArrangedSubview(emailTextField)
      
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.heightAnchor.constraint(equalToConstant:
                                                view.frame.height * 42/896).isActive = true
    }
    
    func setUpPasswordStackView(){
        view.addSubview(passwordStackView)
        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
        passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant:
                                                view.frame.height * 32/896).isActive = true
        passwordStackView.widthAnchor.constraint(equalTo: emailStackView.widthAnchor).isActive = true
        passwordStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.heightAnchor.constraint(equalToConstant:
                                                    view.frame.height * 42/896).isActive = true
    }
    func setUpShowPassword(){
        passwordTextField.addSubview(showPasswordButton)
        showPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        showPasswordButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor).isActive = true
        showPasswordButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -6).isActive = true
    }
    func setUpSignupButton(){
        view.addSubview(signupButton)
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        signupButton.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant:
                                            view.frame.height * 25/896).isActive = true
        signupButton.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        signupButton.heightAnchor.constraint(equalToConstant: view.frame.height * 0.07).isActive = true
        signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpHaveAccountButton(){
        view.addSubview(haveAccountButton)
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.topAnchor.constraint(equalTo: signupButton.bottomAnchor, constant:
                                                view.frame.height * 30/896).isActive = true
        haveAccountButton.leadingAnchor.constraint(equalTo: emailStackView.leadingAnchor).isActive = true
    }
}
