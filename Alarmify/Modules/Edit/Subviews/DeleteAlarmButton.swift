//
//  DeleteAlarmButton.swift
//  Alarmify
//
//  Created by Swastik Patil on 05/06/24.
//

import SwiftUI

struct DeleteAlarmButton: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        HStack {
            
            Spacer()
            Button("Delete Alarm") {
                alarmdata.deleteSheetShwon = true
            }.tint(.red)
                .confirmationDialog("Delete Alarm", isPresented: $alarmdata.deleteSheetShwon) {
                    Button(role: .destructive) {
                        alarmdata.deleteSheetShwon = false
                    }
                label:
                    {
                        Text("Delete")
                    }
                }
            Spacer()
        }
    }
}

#Preview {
    DeleteAlarmButton()
        .environmentObject(AlarmData())
}
