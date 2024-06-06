//
//  DaysSelectorView.swift
//  Alarmify
//
//  Created by Swastik Patil on 04/06/24.
//

import SwiftUI

struct WeekDaysView: View {
    @EnvironmentObject var alarmdata: AlarmData
    @State var isclicked = false
    var days = ["M", "T", "W", "T", "F", "S", "S"]
    
    var body: some View {
        HStack {
            ForEach(days.indices, id: \.self) { index in
                WeekDay(isClicked: isclicked, day: days[index])
            }
        }.padding(.vertical)
    }
}

#Preview {
    WeekDaysView()
        .environmentObject(AlarmData())
}

struct WeekDay: View {
    @State var isClicked: Bool
    var day: String
    var body: some View {
        Toggle(isOn: $isClicked) {
            Text(day)
                .frame(width: 15, height: 15)
        }.toggleStyle(.button)
    }
}
