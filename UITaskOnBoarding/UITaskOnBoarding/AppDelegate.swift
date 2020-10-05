//
//  AppDelegate.swift
//  UITaskOnBoarding
//
//  Created by Umer Farooq on 02/10/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = OnBoardingViewController(nibName: "OnBoardingViewController", bundle: nil)
        window?.makeKeyAndVisible()
        return true
    }




}

