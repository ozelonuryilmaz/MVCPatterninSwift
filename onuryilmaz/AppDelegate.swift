//
//  AppDelegate.swift
//  onuryilmaz
//
//  Created by Onur YILMAZ on 2/8/20.
//  Copyright © 2020 Onur YILMAZ. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // MARK: *** Language Setup
//        if UserDefaults.standard.string(forKey: OYConstants.UserDefaults.APP_SELECTED_LANG) != nil {
//            Localize.setCurrentLanguage(UserDefaults.standard.string(forKey: OYConstants.UserDefaults.APP_SELECTED_LANG)!)
//        }else{
//            let locale = NSLocale.current.languageCode
//            let supportedLangs = OYConfigs.applicationSupportedLanguageCodes
//
//            if supportedLangs.contains(locale ?? ""){
//                Localize.setCurrentLanguage(locale!)
//            }else{
//                Localize.setCurrentLanguage("tr")
//            }
//        }
        
        // MARK: *** IQKeyboardManager
        IQKeyboardManager.shared.enable = true
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
//    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
//        let handled = ApplicationDelegate.shared.application(app, open: url, options: options)
//
//        return handled
//    }


}

