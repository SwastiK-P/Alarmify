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
    @State var isclicked2 = false
    var body: some View {
        
        HStack {
            Toggle(isOn: $isclicked2) {
                Text("M").frame(width: 15, height: 15)
            }.toggleStyle(.button)
            Toggle(isOn: $isclicked) {
                Text("T").frame(width: 15, height: 15)
            }.toggleStyle(.button)
            Toggle(isOn: $isclicked2) {
                Text("W").frame(width: 15, height: 15)
            }.toggleStyle(.button)
            Toggle(isOn: $isclicked) {
                Text("T").frame(width: 15, height: 15)
            }.toggleStyle(.button)
            Toggle(isOn: $isclicked2) {
                Text("F").frame(width: 15, height: 15)
            }.toggleStyle(.button)
            Toggle(isOn: $isclicked) {
                Text("S").frame(width: 15, height: 15)
            }.toggleStyle(.button)
            Toggle(isOn: $isclicked2) {
                Text("S").frame(width: 15, height: 15)
            }.toggleStyle(.button)
        }.padding(.vertical)
            .onChange(of: alarmdata.Everyday) {
               if alarmdata.Everyday == true {
                    isclicked = true
                    isclicked2 = true
                }
                else if alarmdata.Everyday == false {
                     isclicked = false
                     isclicked2 = false
                 }
            }
        }
    }


#Preview {
    WeekDaysView()
        .environmentObject(AlarmData())
}
