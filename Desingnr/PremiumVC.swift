//
//  PremiumVC.swift
//  Desingnr
//
//  Created by Rayan El-Cheikh Youssef on 28.04.24.
//

import UIKit

class PremiumVC: UIViewController {
    @IBOutlet weak var monViewBig: UIView!
    @IBOutlet weak var yearViewBig: UIView!
    @IBOutlet weak var monViewSmall: UIView!
    @IBOutlet weak var yearViewSmall: UIView!
    @IBOutlet weak var goPremiumBtn: UIButton!
    
    var isMonth = false
    var isYear = false
    override func viewDidLoad() {
        super.viewDidLoad()
        monViewBig.layer.borderColor = UIColor(named: "2C2B47")?.cgColor
        yearViewBig.layer.borderColor = UIColor(named: "2C2B47")?.cgColor
        goPremiumBtn.layer.cornerRadius = 8
        
        for item in [monViewBig, yearViewBig]{
            item?.layer.cornerRadius = 12
        }
        for item in [monViewSmall, yearViewSmall]{
            item?.layer.cornerRadius = 5
        }
       
    }

    @IBAction func monBtnClicked(_ sender: Any) {
        isMonth.toggle()
        
        monViewBig.layer.borderWidth = 1
        yearViewBig.layer.borderWidth = 0
    }
    
    @IBAction func yearBtnClicked(_ sender: Any) {
        isYear.toggle()
        monViewBig.layer.borderWidth = 0
        yearViewBig.layer.borderWidth = 1
    }
    
    @IBAction func goPremiumClicked(_ sender: Any) {
        let vc = MainVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
