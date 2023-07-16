//
//  InitialViewController.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 16/07/2023.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func loginBtn(){
        let controller = LoginViewController.instantiateVC(name: .Registeration)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func signupBtn(){
        let controller  = SignUpViewController.instantiateVC(name: .Registeration)
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
