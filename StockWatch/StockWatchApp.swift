//
//  StockWatchApp.swift
//  StockWatch
//
//  Created by Manu Redd on 9/23/22.
//

import SwiftUI

@main
struct StockWatchApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            EmptyView().frame(width: 0, height: 0)
        }
    }
}
