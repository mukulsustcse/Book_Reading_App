//
//  Book_reading_appApp.swift
//  Book_reading_app
//
//  Created by M. A. Alim Mukul on 05.09.22.
//

import SwiftUI

@main
struct Book_reading_appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(bookViewModels())
        }
    }
}
