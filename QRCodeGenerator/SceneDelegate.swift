//
//  SceneDelegate.swift
//  QRCodeGenerator
//
//  Created by Erick Borges on 29/02/20.
//  Copyright © 2020 Erick Borges. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {

            let window = UIWindow(windowScene: windowScene)
            let mainController = MainViewController()

            window.rootViewController = mainController

            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

