//
//  SignupViewModel.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 18/07/2023.
//

import Foundation

class SignupViewModel{
    func signup(userAuth: UserAuth){
        FirebaseAuthenticator.shared.signUp(userAuth: userAuth) { error in
            if let error = error{
//                UIAlertController.showAlert(msg: error.localizedDescription, form: self)
            }
            guard error == nil else {return}
//            UIAlertController.showAlert(msg: "Please check your email and verfiy your registration", form: self)
            //Repeated Code for 1 minute
            var count = 0
            Timer.scheduledTimer(withTimeInterval:5 , repeats: true) { timer in
                FirebaseAuthenticator.shared.login(userAuth: userAuth) { error, isEmailVerified in
                    guard error == nil else { return }
                    if isEmailVerified{
                        timer.invalidate()
//                        self.goToWelcomScreen()
                    }else{
                        count += 1
                        if count == 12{
                            timer.invalidate()
                        }
                    }
                }
            }
        }
    }
}
