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
                AlarmsListView()
            }.navigationTitle("Alarms")
                .toolbar {
                    Button {
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .onAppear {
                    getNotificationPermission()
                }
        }
        .backgroundStyle(.black)
    }
}

#Preview {
    TabView {
        HomeView()
            .environmentObject(AlarmData())
            .tabItem {
                Label("Alarms", systemImage: "alarm.fill")
            }
        
    }
}
