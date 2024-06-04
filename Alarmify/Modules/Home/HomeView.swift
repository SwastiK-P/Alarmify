//
//  HomeView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                AlarmListView()
            }.navigationTitle("Alarms")
             .toolbar {
                     Button {
                   } label: {
                      Image(systemName: "plus")
                }
            }
             .onAppear {
                 GetNotificationPermission()
             }
        }.preferredColorScheme(.dark)
    }
}

#Preview {
    TabView {
        HomeView()
            .environmentObject(AlarmData())
            .tabItem {Label("Alarms", systemImage: "alarm.fill")}
            
    }
}