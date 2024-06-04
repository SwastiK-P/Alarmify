//
//  SoundLabelList.swift
//  Alarmify
//
//  Created by Swastik Patil on 04/06/24.
//

import SwiftUI

struct SoundSelectorView: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        
        NavigationStack {
            
            Picker(selection: $alarmdata.CurrentSound) {
                ForEach(alarmdata.Sounds, id: \.self) {
                    Text($0)
                }
            } label: {
                Text("Sound")
                    .foregroundStyle(.white)
            }.pickerStyle(.navigationLink)
        }
    }
}

#Preview {
    
    SoundSelectorView()
        .environmentObject(AlarmData())
    
}
