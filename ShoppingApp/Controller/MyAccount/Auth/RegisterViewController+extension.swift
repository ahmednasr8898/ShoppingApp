//
//  RegisterViewController+extension.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/5/21.
//
import UIKit
extension RegisterViewController{
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
    func setUpCreateNoonLabel(){
        //Properties
        createnoonLabel.text = "Create a noon account"
        createnoonLabel.font = UIFont.systemFont(ofSize: 28)
        createnoonLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        //Constraint
        view.addSubview(createnoonLabel)
        createnoonLabel.translatesAutoresizingMaskIntoConstraints = false
        createnoonLabel.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant:
                                            view.frame.height * 12/896).isActive = true
        createnoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpFirstNameStackView(){
        //Properties
        firstNameStackView.axis = .vertical
        firstNameStackView.distribution = .fillEqually
        firstNameStackView.spacing = 12
        //Constraint
        view.addSubview(firstNameStackView)
        firstNameStackView.translatesAutoresizingMaskIntoConstraints = false
        firstNameStackView.topAnchor.constraint(equalTo: createnoonLabel.bottomAnchor, constant:
                                                view.frame.height * 32/896).isActive = true
        firstNameStackView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        firstNameStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstNameStackView.addArrangedSubview(firstNameLabel)
        firstNameStackView.addArrangedSubview(firstNameTextField)
    }
    func setUpFirstNameLabel(){
        //Properties
        firstNameLabel.text = "First Name"
        firstNameLabel.font = UIFont.systemFont(ofSize: 15)
        firstNameLabel.textColor = #colorLiteral(red: 0.606359294, green: 0.5660213921, blue: 0.1940417385, alpha: 1)
    }
    func setUpFirstNameTextField(){
        //Properties
        firstNameTextField.placeholder = "Please enter your first name"
        //Constraint
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.heightAnchor.constraint(equalToConstant:
                                                view.frame.height * 42/896).isActive = true
    }
    func setUpLastNameStackView(){
        //Properties
        lastNameStackView.axis = .vertical
        lastNameStackView.distribution = .fillEqually
        lastNameStackView.spacing = 12
        //Constraint
        view.addSubview(lastNameStackView)
        lastNameStackView.translatesAutoresizingMaskIntoConstraints = false
        lastNameStackView.topAnchor.constraint(equalTo: firstNameStackView.bottomAnchor, constant:
                                                view.frame.height * 32/896).isActive = true
        lastNameStackView.widthAnchor.constraint(equalTo: firstNameStackView.widthAnchor).isActive = true
        lastNameStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lastNameStackView.addArrangedSubview(lastNameLabel)
        lastNameStackView.addArrangedSubview(lastNameTextField)
    }
    func setUpLastNameLabel(){
        //Properties
        lastNameLabel.text = "Last Name"
        lastNameLabel.font = UIFont.systemFont(ofSize: 15)
        lastNameLabel.textColor = #colorLiteral(red: 0.606359294, green: 0.5660213921, blue: 0.1940417385, alpha: 1)
    }
    func setUpLastNameTextField(){
        //Properties
        lastNameTextField.placeholder = "Please enter your last name"
        //Constraint
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.heightAnchor.constraint(equalToConstant:
                                                    view.frame.height * 42/896).isActive = true
    }
    func setUpEmailStackView(){
        //Properties
        emailStackView.axis = .vertical
        emailStackView.distribution = .fillEqually
        emailStackView.spacing = 12
        //Constraint
        view.addSubview(emailStackView)
        emailStackView.translatesAutoresizingMaskIntoConstraints = false
        emailStackView.topAnchor.constraint(equalTo: lastNameStackView.bottomAnchor, constant:
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
            showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            passwordTextField.isSecureTextEntry = false
        }else{
            showPasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
            passwordTextField.isSecureTextEntry = true
        }
    }
    func setUpSignupButton(){
        //Properties
        let font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        let attributedString = NSAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font : font as Any, NSAttributedString.Key.foregroundColor: UIColor.white])
        signupButton.setAttributedTitle(attributedString, for: .normal)
        signupButton.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        //Constraint
        view.addSubview(signupButton)
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        signupButton.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant:
                                            view.frame.height * 25/896).isActive = true
        signupButton.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8).isActive = true
        signupButton.heightAnchor.constraint(equalToConstant: view.frame.height * 0.07).isActive = true
        signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpHaveAccountButton(){
        //Properties
        let attributedString = NSMutableAttributedString(string: "Already have an account? ", attributes:[NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4665843588, green: 0.4665843588, blue: 0.4665843588, alpha: 1)])
        attributedString.append(NSAttributedString(string: "sign In", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: UIColor.black]))
        haveAccountButton.setAttributedTitle(attributedString, for: .normal)
        //Constraint
        view.addSubview(haveAccountButton)
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.topAnchor.constraint(equalTo: signupButton.bottomAnchor, constant:
                                                view.frame.height * 30/896).isActive = true
        haveAccountButton.leadingAnchor.constraint(equalTo: emailStackView.leadingAnchor).isActive = true
    }
}
