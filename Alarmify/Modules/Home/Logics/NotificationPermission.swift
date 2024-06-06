//
//  NotificationPermission.swift
//  Alarmify
//
//  Created by Swastik Patil on 04/06/24.
//

import Foundation
import UserNotifications

func getNotificationPermission() {
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: { success, error in
        if success {
            print("Permission Granted!")
        }
        else if let error {
            print(error.localizedDescription)
        }
    })
}
