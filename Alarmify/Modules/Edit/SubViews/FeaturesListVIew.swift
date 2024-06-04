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
                Section {
                    DaySelectionView()
                    HStack {
                        Text("Label")
                        TextField("Silent alarm", text: $alarmdata.Alarmlabel)
                            .multilineTextAlignment(.trailing)
                    }
                    SoundSelectorView()
                    Toggle("Vibrate", isOn: $alarmdata.vibrate).tint(.accentColor)
                }
                Section {
                    HStack {
                        Spacer()
                        Button("Delete Alarm") {
                            alarmdata.deletesheetshwon = true
                        }.tint(.red)
                            .confirmationDialog("Delete Alarm", isPresented: $alarmdata.deletesheetshwon) {
                                Button(role: .destructive) {
                                    alarmdata.deletesheetshwon = false
                                }
                            label:
                                {
                                    Text("Delete")
                                }
                            }
                        Spacer()
                    }
                }
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
