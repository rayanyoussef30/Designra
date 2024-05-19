//
//  CategoriesCVCell.swift
//  Desingnr
//
//  Created by Rayan El-Cheikh Youssef on 19.05.24.
//

import UIKit

class CategoriesCVCell: UICollectionViewCell {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var categorieLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.layer.cornerRadius = 8
        
    }
    func initCell(cellData: Category){
        categorieLabel.text = cellData.name
        mainView.backgroundColor = UIColor(named: (cellData.isSelected) ?  "selCV" : "unselCV")
        categorieLabel.textColor = UIColor(named: (cellData.isSelected) ? "selTitleCV" : "unselTitleCV")
        
    }

}
