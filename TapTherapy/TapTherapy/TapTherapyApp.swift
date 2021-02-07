//
//  TapTherapyApp.swift
//  TapTherapy
//
//  Created by Aaron  on 15/10/2020.
//

import SwiftUI
import Firebase

@main
struct TapTherapyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        Auth.auth().signInAnonymously()
        return true
    }
}
