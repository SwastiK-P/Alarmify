//
//  EditView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI

struct EditView: View {
    @EnvironmentObject var alarmdata: AlarmData
    var body: some View {
        NavigationStack {
            VStack {
                TimePickerView()
                FeaturesListVIew()
                
            }.navigationTitle("Edit Alarm")
             .navigationBarTitleDisplayMode(.inline)
             .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("cancel") {
                        print("toggled!")
                        alarmdata.editsheetshown.toggle()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    print("toggled!")
                    alarmdata.editsheetshown.toggle()
                }.bold()
            }
        }
             .preferredColorScheme(.dark)
        }
    }
}
#Preview {
    EditView()
        .environmentObject(AlarmData())
}
