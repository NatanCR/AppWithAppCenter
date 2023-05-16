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
        AppCenter.start(withAppSecret: "4f3b4894-823d-4288-9930-0aef316b737e", services:[
          Analytics.self,
          Crashes.self
        ])
    }
}
