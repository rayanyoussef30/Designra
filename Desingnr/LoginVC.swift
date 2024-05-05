//
//  LoginVC.swift
//  Desingnr
//
//  Created by Rayan El-Cheikh Youssef on 23.04.24.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTF.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "Placeholder")!])
        
        passwordTF.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "Placeholder")!])

        for item in [emailView, passwordView, signInBtn]{
            item?.layer.cornerRadius = 8
        }
    }

    @IBAction func signInBtnClicked(_ sender: Any) {
        let vc = PremiumVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
