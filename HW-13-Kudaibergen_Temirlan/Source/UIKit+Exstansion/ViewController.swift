//
//  ViewController.swift
//  HW-13-Kudaibergen_Temirlan
//
//  Created by Темирлан Кудайберген on 05.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {    
    
    var tabsSetting: [[Tabs]]?
    
    //    MARK: UI    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(CustomtableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    //    MARK: Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        tabsSetting = Tabs.newTabs
        setupHierarchy()
        setupLayout()
    }
    
    
    
    //    MARK: Setup
    private func setupHierarchy() {
        view.addSubview(tableView)
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalTo(view)
        }
    }
}

