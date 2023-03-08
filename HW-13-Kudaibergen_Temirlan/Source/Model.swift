//
//  Model.swift
//  HW-13-Kudaibergen_Temirlan
//
//  Created by Темирлан Кудайберген on 08.03.2023.
//

import UIKit

struct Tabs: Hashable {
    var tabsStructName: String
    var tabsStructImage: UIImage
    var cellType: TypeOfAccsessories
    var statusText: String = ""
}

enum TypeOfAccsessories {
    case disclosureIndicator
    case switchButton
    case detailDisclosureButton
}

extension Tabs {
    static var newTabs: [[Tabs]] = [
        //         Первое отделение
        [Tabs(tabsStructName: "Авиарежим" , tabsStructImage: UIImage(named: "Авиарежим") ?? UIImage.remove, cellType: .switchButton),
         Tabs(tabsStructName: "WI-FI", tabsStructImage: UIImage(named: "WI-FI") ?? UIImage.remove, cellType: .disclosureIndicator, statusText: "Не подключен"),
         Tabs(tabsStructName: "Bluetooth", tabsStructImage: UIImage(named: "Bluetooth") ?? UIImage.remove, cellType: .disclosureIndicator, statusText: "Вкл."),
         Tabs(tabsStructName: "Сотовая связь" , tabsStructImage: UIImage(named: "Сотовая связь") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Режим модема", tabsStructImage: UIImage(named: "Режим модема") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "VPN", tabsStructImage: UIImage(named: "VPN") ?? UIImage.remove, cellType: .disclosureIndicator, statusText: "Не подключен")],
        
        //         Второе отделение
        [Tabs(tabsStructName: "Уведомления" , tabsStructImage: UIImage(named: "Уведомления") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Звуки, тактильные сигналы", tabsStructImage: UIImage(named: "Звук") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Фокусирование", tabsStructImage: UIImage(named: "Фокусирование") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Экранное время", tabsStructImage: UIImage(named: "Экранное время") ?? UIImage.remove, cellType: .disclosureIndicator)],
        
        //         Третье отделение
        [Tabs(tabsStructName: "Основные" , tabsStructImage: UIImage(named: "Основные") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Пункт управления", tabsStructImage: UIImage(named: "Пункт управления") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Экран и яркость", tabsStructImage: UIImage(named: "Экран и яркость") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Экран Домой" , tabsStructImage: UIImage(named: "Экран Домой") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Универсальный доступ", tabsStructImage: UIImage(named: "Универсальный доступ") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Обои", tabsStructImage: UIImage(named: "Обои") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Siri и Поиск" , tabsStructImage: UIImage(named: "Siri и Поиск") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Face ID и код-пароль", tabsStructImage: UIImage(named: "Face ID и код-пароль") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Экстренный вызов - SOS", tabsStructImage: UIImage(named: "Экстренный вызов") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Уведомления о контакте" , tabsStructImage: UIImage(named: "Уведомления") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Аккумулятор", tabsStructImage: UIImage(named: "Аккумулятор") ?? UIImage.remove, cellType: .disclosureIndicator),
         Tabs(tabsStructName: "Конфиденциальность и безопасность", tabsStructImage: UIImage(named: "Конфиденциальность") ?? UIImage.remove, cellType: .disclosureIndicator)]
    ]
}

