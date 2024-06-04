//
//  DaySelectionView.swift
//  Alarmify
//
//  Created by Swastik Patil on 04/06/24.
//

import SwiftUI

struct DaySelectionView: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        VStack {
            Toggle("Everyday", isOn: $alarmdata.Everyday).tint(.accentColor)
            WeekDaysView()
            HStack {
                Image(systemName: "deskclock")
                    .padding(.trailing, 10)
                Text("Pause Alarm")
                Spacer()
                Button {
                    alarmdata.pausesheetshown.toggle()
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
        }.sheet(isPresented: $alarmdata.pausesheetshown) {
            DatePickerView()
        }
    }
}

#Preview {
    DaySelectionView()
        .environmentObject(AlarmData())
}
