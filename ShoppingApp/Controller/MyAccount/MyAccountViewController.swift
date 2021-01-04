//
//  MyAccountViewController.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/3/21.
//
import UIKit

class MyAccountViewController: UIViewController {

    @IBOutlet weak var signinView: UIView!
    @IBOutlet weak var signupView: UIView!
    @IBOutlet weak var countryView: UIView!
    
    @IBOutlet weak var languageView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addActionToView()
    }
    func addActionToView(){
        let signInGesture = UITapGestureRecognizer(target: self, action: #selector(signinOnClick(sender:)))
        signinView.addGestureRecognizer(signInGesture)
        
        let signUpGesture = UITapGestureRecognizer(target: self, action: #selector(signupOnClick(sender:)))
        signupView.addGestureRecognizer(signUpGesture)
    }
    @objc func signinOnClick(sender: UITapGestureRecognizer){
        let loginSt = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController")
        loginSt.modalPresentationStyle = .fullScreen
        self.present(loginSt, animated: true, completion: nil)
    }
    @objc func signupOnClick(sender: UITapGestureRecognizer){
        print("go to sign up page")
    }
}
