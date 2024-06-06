//
//  AlarmListView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI

struct AlarmsListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<9) { alarms in
                    AlarmView()
                }
            }
        }.scrollIndicators(.hidden)
    }
}

#Preview {
    AlarmsListView()
        .environmentObject(AlarmData())
}
