//
//  Extansion.swift
//  HW-13-Kudaibergen_Temirlan
//
//  Created by Темирлан Кудайберген on 08.03.2023.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return tabsSetting?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tabsSetting?[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomtableViewCell
        let typeOfAccsessory = tabsSetting?[indexPath.section][indexPath.row].cellType
        cell?.tabs = tabsSetting?[indexPath.section][indexPath.row]
        let swichButton = UISwitch(frame: CGRectZero) as UISwitch
        swichButton.isOn = false
        cell?.accessoryType = .detailDisclosureButton
        switch typeOfAccsessory {
        case .switchButton:
            cell?.accessoryView = swichButton
        case .disclosureIndicator:
            cell?.accessoryType = .disclosureIndicator
        case .none:
            cell?.accessoryType = .checkmark
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailView()
        tableView.deselectRow(at: indexPath, animated: true)
        viewController.tabs = tabsSetting?[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
}
