//
//  ContentView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {Label("Alarms", systemImage: "alarm.fill")}
        }
        
    }
}

#Preview {
    ContentView()
}
