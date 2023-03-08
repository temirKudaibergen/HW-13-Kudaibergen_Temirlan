//
//  CustomtableViewCell.swift
//  HW-13-Kudaibergen_Temirlan
//
//  Created by Темирлан Кудайберген on 08.03.2023.
//

import UIKit

class CustomtableViewCell: UITableViewCell {
    
    var tabs: Tabs? {
        didSet {
            tabsImage.image = tabs?.tabsStructImage
            tabsName.text = tabs?.tabsStructName
            tabsStatus.text = tabs?.statusText
        }
    }
    
//    MARK: UI
    private lazy var tabsImage: UIImageView = {
       let tabsImage = UIImageView()
        tabsImage.clipsToBounds = true
        return tabsImage
    }()
    
    private lazy var tabsName: UILabel = {
        let tabsName = UILabel()
        tabsName.font = UIFont.systemFont(ofSize: 15)
        tabsName.textColor = .black
        return tabsName
    }()
    
    private lazy var tabsStatus: UILabel = {
        let tabsStatus = UILabel()
        tabsStatus.font = UIFont.systemFont(ofSize: 15)
        tabsStatus.textColor = .systemGray
         return tabsStatus
    }()

    //    MARK: Lifecyle
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupHierarchy()
            setupLayout()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    //    MARK: Setup
        
        private func setupHierarchy() {
            contentView.addSubview(tabsImage)
            contentView.addSubview(tabsStatus)
            contentView.addSubview(tabsName)
        }
        
        private func setupLayout() {
            tabsImage.snp.makeConstraints{
                $0.centerY.equalTo(contentView)
                $0.left.equalTo(contentView).offset(16)
                $0.width.height.equalTo(60)
            }
            tabsName.snp.makeConstraints{
                $0.centerY.equalTo(contentView)
                $0.left.equalTo(tabsImage.snp.right)
            }
            tabsStatus.snp.makeConstraints{
                $0.centerY.equalTo(contentView)
                $0.right.equalTo(contentView).offset(-20)
            }
        }
}
