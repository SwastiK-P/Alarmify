//
//  SoundLabelList.swift
//  Alarmify
//
//  Created by Swastik Patil on 04/06/24.
//

import SwiftUI

struct SoundPickerView: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        NavigationStack {
            Picker(selection: $alarmdata.currentSound) {
                ForEach(alarmdata.sounds, id: \.self) {
                    Text($0)
                }
            } label: {
                Text("Sound")
                    .foregroundStyle(.primary)
            }.pickerStyle(.navigationLink)
        }
    }
}

#Preview {
    
    SoundPickerView()
        .environmentObject(AlarmData())
    
}
