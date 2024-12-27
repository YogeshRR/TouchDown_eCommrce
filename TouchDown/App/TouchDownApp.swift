//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Yogesh Raut on 17/12/24.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
