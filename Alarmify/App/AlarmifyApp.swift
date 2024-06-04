//
//  AlarmifyApp.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI

@main
struct AlarmifyApp: App {
    @StateObject var alarmdata = AlarmData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(alarmdata)
        }
    }
}
