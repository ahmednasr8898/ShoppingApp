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
    let ahlanLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Ahlan! Welcome back!"
        lbl.font = UIFont.systemFont(ofSize: 28)
        lbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return lbl
    }()
    let emailStackView: UIStackView = {
        let st = UIStackView()
        st.axis = .vertical
        st.distribution = .fillEqually
        st.spacing = 12
        return st
    }()
    let emailLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Email"
        lbl.font = UIFont.systemFont(ofSize: 13)
        lbl.textColor = #colorLiteral(red: 0.7979679404, green: 0.7979679404, blue: 0.7979679404, alpha: 1)
        return lbl
    }()
    let emailTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "Please enter your email address"
        return txt
    }()
    let passwordStackView: UIStackView = {
        let st = UIStackView()
        st.axis = .vertical
        st.distribution = .fillEqually
        st.spacing = 12
        return st
    }()
    let passwordLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Password"
        lbl.font = UIFont.systemFont(ofSize: 13)
        lbl.textColor = #colorLiteral(red: 0.7979679404, green: 0.7979679404, blue: 0.7979679404, alpha: 1)
        return lbl
    }()
    let passwordTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "Please enter your password"
        txt.isSecureTextEntry = true
        return txt
    }()
    let showPasswordButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "eye"), for: .normal)
        btn.tintColor = UIColor.black
        btn.addTarget(self, action: #selector(showPasswordOnClick(sender:)), for: .touchUpInside)
        return btn
    }()
    let forgotButton: UIButton = {
        let btn = UIButton()
        let attributedString = NSAttributedString(string: "Forgot your password?", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.5442033679, green: 0.5442033679, blue: 0.5442033679, alpha: 1)])
        btn.setAttributedTitle(attributedString, for: .normal)
        return btn
    }()
    let signinButton: UIButton = {
        let btn = UIButton()
        let attributedString = NSAttributedString(string: "Sign In", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.white])
        btn.setAttributedTitle(attributedString, for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        return btn
    }()
    let haveAccountButton: UIButton = {
        let btn = UIButton()
        let attributedString = NSMutableAttributedString(string: "Dont't have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.606359294, green: 0.606359294, blue: 0.606359294, alpha: 1)])
        attributedString.append(NSAttributedString(string: "sign Up", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: UIColor.black]))
        btn.setAttributedTitle(attributedString, for: .normal)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTopStackVeiw()
        setUpNoonImage()
        setUpCancelImage()
        setUpAhlanLabel()
        setUpEmailStackView()
        setUpPasswordStackView()
        setUpForgotPassword()
        setUpSigninButton()
        setUpHaveAccountButton()
        setUpShowPassword()
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
}
