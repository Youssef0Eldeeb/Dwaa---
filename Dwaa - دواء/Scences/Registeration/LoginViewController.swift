//
//  LoginViewController.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 16/07/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTitle: UILabel!
    @IBOutlet weak var passwordTitle: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI(){
        loginButton.layer.cornerRadius = 15
        loginButton.layer.masksToBounds = true
        emailTitle.text = ""
        passwordTitle.text = ""
        
        emailTextField.delegate = self
        passTextField.delegate = self
    }
}

// MARK: - Extension for Delegation of TextField
extension LoginViewController: UITextFieldDelegate{
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        emailTitle.text = emailTextField.hasText ? "Email" : ""
        passwordTitle.text = passTextField.hasText ? "Password" : ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            let email = emailTextField.text!
            let password = passTextField.text!
            let userAuth = UserAuth(email: email, password: password)
            //            checkLoginAuthentication(userAuth)
            textField.resignFirstResponder()
            return true
        }else{
            textField.resignFirstResponder()
            return true
        }
    }
    
}
