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
    @IBOutlet weak var buttonsView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        animateUI()
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
        logoLabel.alpha = 0
        buttonsView.frame = CGRect(x: 106.67, y: 950, width: 130, height: 80)
        loginButton.layer.cornerRadius = 15
        loginButton.layer.masksToBounds = true
        signupButton.layer.cornerRadius = 15
        signupButton.layer.masksToBounds = true
    }
    private func animateUI(){
        UIView.animate(withDuration: 2) {
            self.logoLabel.alpha = 1
            self.buttonsView.frame = CGRect(x: 106.67, y: 521, width: 180, height: 130)
        }
    }
}
