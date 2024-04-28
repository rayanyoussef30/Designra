//
//  HomeVC.swift
//  Desingnr
//
//  Created by Rayan El-Cheikh Youssef on 23.04.24.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var startNowBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNowBtn.layer.cornerRadius = 8 
      
    }

    @IBAction func startNowBtnClicked(_ sender: Any) {
        let vc = LoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    


}
