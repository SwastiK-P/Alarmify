//
//  DatePickerView.swift
//  Alarmify
//
//  Created by Swastik Patil on 04/06/24.
//

import SwiftUI

struct DatePickerView: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        NavigationStack {
            VStack {
                MultiDatePicker("", selection: $alarmdata.PauseDates, in: Date.now...)
                    .labelsHidden()
                    .tint(.accentColor)
                
            }.padding()
                .navigationTitle("Pause alarm")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button("Done") {
                        alarmdata.pausesheetshown.toggle()
                    }
                }
        }
    }
}

#Preview {
    DatePickerView()
        .environmentObject(AlarmData())
}
