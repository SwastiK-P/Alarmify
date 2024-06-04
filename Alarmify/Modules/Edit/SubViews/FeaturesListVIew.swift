//
//  FeaturesListVIew.swift
//  Alarmify
//
//  Created by Swastik Patil on 04/06/24.
//

import SwiftUI
import AudioToolbox

struct FeaturesListVIew: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        NavigationStack {
            List {
                DaySelectionView()
                HStack {
                    Text("Label")
                    TextField("Silent alarm", text: $alarmdata.Alarmlabel)
                        .multilineTextAlignment(.trailing)
                }
                SoundSelectorView()
                Toggle("Vibrate", isOn: $alarmdata.vibrate).tint(.accentColor)
                
            }.preferredColorScheme(.dark)
                .onChange(of: alarmdata.vibrate) {
                    if alarmdata.vibrate == true {
                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {   }
                    }
                }
        }
    }
}
#Preview {
    FeaturesListVIew()
        .environmentObject(AlarmData())
}
