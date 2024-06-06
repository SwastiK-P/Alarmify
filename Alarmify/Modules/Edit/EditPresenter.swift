//
//  EditPresenter.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import Foundation

class AlarmData: ObservableObject {
    @Published var editSheetShown = false
    @Published var pauseSheetShown = false
    @Published var deleteSheetShwon = false
    @Published var pickedTime = Date.now
    @Published var pauseDates: Set<DateComponents> = []
    @Published var alarmLabel = ""
    @Published var sounds = ["None", "Arpeggio", "Breaking", "Opening", "Chirp", "Daybreak", "Tease", "Seedling"]
    @Published var currentSound = "None"
    @Published var vibrate = false
    @Published var everyDay = false
}
