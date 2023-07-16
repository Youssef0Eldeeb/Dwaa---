//
//  InitialViewController.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 16/07/2023.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    @IBAction func loginBtn(){
        let controller = LoginViewController.instantiateVC(name: .Registeration)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func signupBtn(){
        let controller  = SignUpViewController.instantiateVC(name: .Registeration)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    private func setupUI(){
        loginButton.layer.cornerRadius = 15
        loginButton.layer.masksToBounds = true
        signupButton.layer.cornerRadius = 15
        signupButton.layer.masksToBounds = true
    }
}
