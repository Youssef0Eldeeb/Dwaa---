//
//  UIViewController+Extension.swift
//  Dwaa - دواء
//
//  Created by Youssef Eldeeb on 16/07/2023.
//

import Foundation
import UIKit

extension UIViewController{
    static var identifire: String{
        return String(describing: self)
    }
    
    static func instantiateVC(name: StoryboardEnum) -> Self{
        let stroyboard = UIStoryboard(name: name.rawValue, bundle: nil)
        let controller = stroyboard.instantiateViewController(withIdentifier: identifire) as! Self
        return controller
    }
    
    enum StoryboardEnum: String{
        case Registeration
    }
    
    func hideKeyboardWhenTappedAround(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismiss_Keyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismiss_Keyboard(){
        view.endEditing(true)
    }
}
