//
//  SignUpViewController.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 16/07/2023.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstNameTitle: UILabel!
    @IBOutlet weak var lastNameTitle: UILabel!
    @IBOutlet weak var emailTitle: UILabel!
    @IBOutlet weak var passwordTitle: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.hideKeyboardWhenTappedAround()
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    private func setupUI(){
        signupButton.layer.cornerRadius = 15
        signupButton.layer.masksToBounds = true
        firstNameTitle.text = ""
        lastNameTitle.text = ""
        emailTitle.text = ""
        passwordTitle.text = ""
        
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        emailTextField.delegate = self
        passTextField.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    @objc func keyboardWillShow(notification: NSNotification){
        self.view.frame.origin.y = CGFloat(0 - 150)
    }
    
}

// MARK: - Extension for Delegation of TextField

extension SignUpViewController: UITextFieldDelegate{
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        firstNameTitle.text = firstNameTextField.hasText ? "First Name" : ""
        lastNameTitle.text = lastNameTextField.hasText ? "Last Name" : ""
        emailTitle.text = emailTextField.hasText ? "Email" : ""
        passwordTitle.text = passTextField.hasText ? "Password" : ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            let email = emailTextField.text ?? ""
            let password = passTextField.text ?? ""
            let firstName = firstNameTextField.text ?? ""
            let lastName = lastNameTextField.text ?? ""
            let name = firstName + " " + lastName
            let userAuth = UserAuth(email: email, password: password, username: name)
//            checkSignupAuthentication(userAuth)
            self.view.frame.origin.y = 0
            textField.resignFirstResponder()
            return true
        }else{
            self.view.frame.origin.y = 0
            textField.resignFirstResponder()
            return true
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.view.frame.origin.y = 0
        textField.resignFirstResponder()
    }
}
