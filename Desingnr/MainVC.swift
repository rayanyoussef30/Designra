//
//  MainVC.swift
//  Desingnr
//
//  Created by Rayan El-Cheikh Youssef on 28.04.24.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var searchView: UIView!
    
    @IBOutlet weak var categoriesCV: UICollectionView!
    @IBOutlet weak var productsTV: UITableView!
    var productsList = ["TV1","TV2","TV3"]
    var categoriesList: [Category] = [Category(name: "All Courses", isSelected: true),
                                      Category(name: "Identity", isSelected: false),
                                      Category(name: "UI/UX", isSelected: false),
                                      Category(name: "Branding", isSelected: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView.layer.cornerRadius = 11
        
        productsTV.delegate = self
        productsTV.dataSource = self
        productsTV.register(UINib(nibName: "ProductsTVCell", bundle: nil), forCellReuseIdentifier: "ProductsTVCell")
        
        categoriesCV.delegate = self
        categoriesCV.dataSource = self
        categoriesCV.register(UINib(nibName: "CategoriesCVCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCVCell")
        
    }



}

extension MainVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 205
    }
}
extension MainVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsTVCell", for: indexPath) as! ProductsTVCell
        cell.productsImg.image = UIImage(named: productsList[indexPath.row])
        return cell
    }
    
    
}
extension MainVC: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        for index in 0..<categoriesList.count{
            categoriesList[index].isSelected = false
        }
        categoriesList[indexPath.row].isSelected = true
        categoriesCV.reloadData()
    }
}
extension MainVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCVCell", for: indexPath) as! CategoriesCVCell
        cell.initCell(cellData: categoriesList[indexPath.row])
    return cell
    }
    
    
}

extension MainVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.height
        let width = calculateCellWidth(category: categoriesList[indexPath.row])
        return CGSize(width: width, height: height)
    }
    private func calculateCellWidth(category: Category) -> CGFloat{
        let cell = Bundle.main.loadNibNamed("CategoriesCVCell", owner: self)?.first as! CategoriesCVCell
        cell.initCell(cellData: category)
        let fittingSize = CGSize(width: UIView.layoutFittingCompressedSize.width, height: cell.bounds.height)
        let size = cell.contentView.systemLayoutSizeFitting(fittingSize)
        return size.width
        
    }
    
}
