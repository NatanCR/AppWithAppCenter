//
//  MacroChallengeApp.swift
//  MacroChallenge
//
//  Created by Natan de Camargo Rodrigues on 16/05/23.
//

import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import SwiftUI

@main
struct MacroChallengeApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init(){
        guard let appCenterKey = Bundle.main.infoDictionary?["APP_CENTER_KEY"] as? String else { return }
        AppCenter.start(withAppSecret: appCenterKey, services:[
          Analytics.self,
          Crashes.self
        ])
    }
}
