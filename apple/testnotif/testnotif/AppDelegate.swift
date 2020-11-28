//
//  AppDelegate.swift
//  testnotif
//
//  Created by Kilo Loco on 10/29/20.
//

import Amplify
import AmplifyPlugins
//import AWSPinpoint
import UIKit
import UserNotifications

class Global {
    var date = Date()
    
    static let shared = Global()
    
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

//    var pinpoint: AWSPinpoint?
    var notificationCenter: UNUserNotificationCenter { .current() }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        registerPushNotification(for: application)
        configureAmplify()
        
        return true
    }
    
    func registerPushNotification(for application: UIApplication) {
        notificationCenter.delegate = self
        notificationCenter.requestAuthorization(options: [.alert, .badge, .sound]) { [weak self] in
            if let error = $1 {
                print("could not authorize notifications", error)
            }
            
            guard $0 else { return }
            self?.getNotificationSettings(for: application)
        }
    }
    
    func getNotificationSettings(for application: UIApplication) {
        notificationCenter.getNotificationSettings { settings in
            print("Notification settings:", settings)
            guard settings.authorizationStatus == .authorized else { return }
            
            DispatchQueue.main.async {
                application.registerForRemoteNotifications()
            }
        }
    }
    
    func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: AmplifyModels()))
            try Amplify.configure()
            
            print("Successfully configured amplify")
        } catch {
            print("Failed to configure amplify", error)
        }
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let token = deviceToken.reduce("") { $0 + String(format: "%02X", $1) }
        print("Device Token", token)
        
//        pinpoint?.notificationManager.interceptDidRegisterForRemoteNotifications(withDeviceToken: deviceToken)
        
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("failed to register push notifications", error)
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
    // Foreground
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        let difference = Date().timeIntervalSince(Global.shared.date)
        print("The difference in time is \(difference)")
//        pinpoint?.notificationManager.interceptDidReceiveRemoteNotification(notification.request.content.userInfo)
        print("foreground notification")
        completionHandler([.banner, .sound])
    }
    
    // Background
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
//        pinpoint?.notificationManager.interceptDidReceiveRemoteNotification(response.notification.request.content.userInfo)
        print("background notification")
        completionHandler()
    }
}
