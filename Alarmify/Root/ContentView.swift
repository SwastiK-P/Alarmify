//
//  ContentView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var alarmdata = AlarmData()
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Alarms", systemImage: "alarm.fill")
                }
        }.environmentObject(alarmdata)
    }
}

#Preview {
    ContentView()
}
