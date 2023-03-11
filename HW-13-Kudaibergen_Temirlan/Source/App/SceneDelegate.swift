//
//  SceneDelegate.swift
//  HW-13-Kudaibergen_Temirlan
//
//  Created by Темирлан Кудайберген on 05.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            guard let windowScen = (scene as? UIWindowScene) else { return }
            window = UIWindow(windowScene: windowScen)
            let viewController = ViewController()
            let navigationController = UINavigationController(rootViewController: viewController)
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
    }
}

