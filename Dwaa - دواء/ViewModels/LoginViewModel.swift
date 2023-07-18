//
//  LoginViewModel.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 18/07/2023.
//

import Foundation

class LoginViewModel{
    func login(userAuth: UserAuth){
        FirebaseAuthenticator.shared.login(userAuth: userAuth) { error, isEmailVerified in
            if error == nil{
                if isEmailVerified{
//                    let controller = CustomTabBarController.instantiateVC(name: .Home)
//                    controller.modalPresentationStyle = .fullScreen
//                    controller.modalTransitionStyle = .flipHorizontal
//                    self.present(controller, animated: true)
                }else{
//                    UIAlertController.showAlert(msg: "Please check your email and verfiy your registration", form: self)
                }
            }else{
//                UIAlertController.showAlert(msg: error!.localizedDescription, form: self)
            }
        }
    }
}
