//
//  DetailView.swift
//  HW-13-Kudaibergen_Temirlan
//
//  Created by Темирлан Кудайберген on 08.03.2023.
//

import UIKit

class DetailView: UIViewController {
    
    var tabs: Tabs?
    
    //    MARK: UI    
    private lazy var tabsImage: UIImageView = {
        let tabsImage = UIImageView()
        tabsImage.clipsToBounds = true
        return tabsImage
    }()
    
    private lazy var tabsName: UILabel = {
        let tabsName = UILabel()
        tabsName.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        tabsName.textColor = .black
        return tabsName
    }()
    
    //    MARK: Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        fillSettings()
    }
    
    //    MARK: Setup
    private func setupHierarchy() {
        view.backgroundColor = .white
        view.addSubview(tabsImage)
        view.addSubview(tabsName)
    }
    
    private func setupLayout() {
        tabsImage.snp.makeConstraints{
            $0.centerY.centerX.equalTo(view)
        }
        tabsName.snp.makeConstraints{
            $0.centerX.equalTo(tabsImage)
            $0.top.equalTo(tabsImage.snp.bottom)
        }
    }
    
    private func fillSettings() {
        tabsImage.image = tabs?.tabsStructImage
        tabsName.text = tabs?.tabsStructName
    }
}
