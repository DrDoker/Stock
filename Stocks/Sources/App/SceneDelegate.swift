//
//  SceneDelegate.swift
//  Stock
//
//  Created by Serhii  on 09/01/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?

	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = (scene as? UIWindowScene) else { return }
		
		window = UIWindow(windowScene: windowScene)
		
		let viewController = WatchListViewController()
		let navigationContoller = UINavigationController(rootViewController: viewController)
		
		window?.rootViewController = navigationContoller
		window?.makeKeyAndVisible()
	}

}

