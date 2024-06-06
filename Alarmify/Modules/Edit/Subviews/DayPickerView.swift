//
//  DaySelectionView.swift
//  Alarmify
//
//  Created by Swastik Patil on 04/06/24.
//

import SwiftUI

struct DayPickerView: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        VStack {
            Toggle("Everyday", isOn: $alarmdata.everyDay)
                .tint(.accentColor)
            WeekDaysView()
            HStack {
                Image(systemName: "deskclock")
                    .padding(.trailing, 8)
                Text("Pause Alarm")
                Spacer()
                Button {
                    alarmdata.pauseSheetShown.toggle()
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
        }.sheet(isPresented: $alarmdata.pauseSheetShown) {
            DatePickerView()
        }
    }
}

#Preview {
    DayPickerView()
        .environmentObject(AlarmData())
}
