//
//  DatePickerView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI

struct TimePickerView: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        DatePicker("", selection: $alarmdata.pickedTime, displayedComponents: [.hourAndMinute])
            .datePickerStyle(.wheel)
            .labelsHidden()
    }
}

#Preview {
    TimePickerView()
        .environmentObject(AlarmData())
}
