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
        VStack {
            DatePicker("", selection: $alarmdata.PickedTime, displayedComponents: [.hourAndMinute])
                .datePickerStyle(.wheel)
               .labelsHidden()
        }
    }
}

#Preview {
    TimePickerView()
        .environmentObject(AlarmData())
}
