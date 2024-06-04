//
//  EditPresenter.swift
//  Alarmify
//
//  Created by Swastik Patil on 03/06/24.
//

import Foundation

class AlarmData: ObservableObject {
    @Published var editsheetshown = false
    @Published var pausesheetshown = false
    @Published var deletesheetshwon = false
    @Published var PickedTime = Date.now
    @Published var PauseDates: Set<DateComponents> = []
    @Published var Alarmlabel = ""
    @Published var Sounds = ["None", "Arpeggio", "Breaking", "Opening", "Chirp", "Daybreak", "Tease", "Seedling"]
    @Published var CurrentSound = "None"
    @Published var vibrate = false
    @Published var Everyday = false
}
