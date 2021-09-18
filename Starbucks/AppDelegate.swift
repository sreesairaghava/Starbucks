//
//  AppDelegate.swift
//  Starbucks
//
//  Created by Sree Sai Raghava Dandu on 11/09/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        // ViewControllers
        let homeVC = HomeViewController()
        let scanVC = ScanViewController()
        let orderVC = OrderViewController()
        let giftVC = GiftViewController()
        let storeVC = StoreViewController()
        // Navigation View Controllers
//        let homeNC = UINavigationController(rootViewController: homeVC)
        let scanNC = makeNavigationController(rootViewController: scanVC)
        let orderNC = makeNavigationController(rootViewController: orderVC)
        let giftNC = makeNavigationController(rootViewController: giftVC)
        let storeNC = makeNavigationController(rootViewController: storeVC)
        // Setup TabarController
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeVC,scanNC,orderNC,giftNC,storeNC]
        
        window?.rootViewController = tabBarController
        
        return true
    }
    // makeNavigationController
    func makeNavigationController(rootViewController: UIViewController) -> UINavigationController{
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.navigationBar.prefersLargeTitles = true
        // Attributes
        let attrs = [
            NSAttributedString.Key.foregroundColor: UIColor.label, NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .title1).bold()
        ]
        navigationController.navigationBar.largeTitleTextAttributes = attrs
        return navigationController
    }


}

