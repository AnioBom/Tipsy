//
//  SceneDelegate.swift
//  Tipsy
//
//  Created by mac on 4/27/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let mainViewController = ViewController()
        
        window.rootViewController = UINavigationController(rootViewController: mainViewController)
        window.makeKeyAndVisible()
        self.window = window
    }

   
}

