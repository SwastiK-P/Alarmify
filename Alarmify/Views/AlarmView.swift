//
//  AlarmView.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import SwiftUI

struct AlarmView: View {
    var body: some View {
        Toggle(isOn: .constant(true)) {
            HStack {
                VStack {
                    HStack {
                        Text("9:30")
                            .font(.system(size: 70))
                            .fontWeight(.light)
                            .padding(.trailing)
                        
                        Text("AM")
                            .font(.largeTitle)
                            .padding(.top, 13)
                            .padding(.trailing)
                    }
                    HStack {
                        Text("Silent alarm,")
                        Text("everyday")
                        Image(systemName: "bell.fill")
                        Image(systemName: "iphone.gen3.radiowaves.left.and.right")
                    }
                }
                
            }
        }.padding()
        
    }
}

#Preview {
    AlarmView()
}
