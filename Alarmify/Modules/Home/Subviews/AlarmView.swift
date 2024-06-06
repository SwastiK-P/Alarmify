//
//  AlarmView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI
struct AlarmView: View {
    @EnvironmentObject var alarmdata: AlarmData
    let lighthaptic = UIImpactFeedbackGenerator(style: .light)
    var body: some View {
        Toggle(isOn: .constant(true)) {
            HStack {
                VStack {
                    HStack {
                        Text("9:40")
                            .font(.system(size: 70))
                            .fontWeight(.light)
                        Text("AM")
                            .font(.largeTitle)
                            .padding(.top, 13)
                            .padding(.trailing)
                        Spacer()
                    }
                    HStack {
                        Text("Silent alarm,")
                        Text("everyday")
                        Image(systemName: "bell.fill")
                        Image(systemName: "iphone.gen3.radiowaves.left.and.right")
                        Spacer()
                    }
                }
                
            }
            .onTapGesture {
                alarmdata.editSheetShown.toggle()
                lighthaptic.impactOccurred()
            }
            
        }.sheet(isPresented: $alarmdata.editSheetShown) {
            EditView()
        }
        .padding()
    }
}

#Preview {
    AlarmView()
        .environmentObject(AlarmData())
}
