//
//  EditView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI
import AudioToolbox

struct EditView: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        NavigationStack {
            VStack {
                TimePickerView()
                List {
                    Section {
                        DayPickerView()
                        HStack {
                            Text("Label")
                            TextField("Silent alarm", text: $alarmdata.alarmLabel)
                                .multilineTextAlignment(.trailing)
                        }
                        SoundPickerView()
                        Toggle("Vibrate", isOn: $alarmdata.vibrate)
                            .tint(.accentColor)
                            .onChange(of: alarmdata.vibrate) {
                                if alarmdata.vibrate == true {
                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {   }
                                }
                            }
                    }
                    Section {
                        DeleteAlarmButton()
                    }
                }
            }.navigationTitle("Edit Alarm")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("cancel") {
                            print("toggled!")
                            alarmdata.editSheetShown.toggle()
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Save") {
                            print("toggled!")
                            alarmdata.editSheetShown.toggle()
                        }.bold()
                    }
                }
        }
    }
}
#Preview {
    EditView()
        .environmentObject(AlarmData())
}
