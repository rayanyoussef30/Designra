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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for item in [emailView, passwordView, signInBtn]{
            item?.layer.cornerRadius = 8
        }
    }

    @IBAction func signInBtnClicked(_ sender: Any) {
        let vc = PremiumVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
