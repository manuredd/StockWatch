//
//  AppDelegate.swift
//  StockWatch
//
//  Created by Manu Redd on 9/23/22.
//

import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {

    private var window: NSWindow!
    
    private var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
//        window = NSWindow(
//           contentRect: NSRect(x: 0, y: 0, width: 480, height: 270),
//            styleMask: [.miniaturizable, .closable, .resizable, .titled],
//            backing: .buffered, defer: false)
//        window.center()
//        window.title = "No Storyboard Window"
//        window.makeKeyAndOrderFront(nil)
        
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        if let button = statusItem.button {
            button.image = NSImage(systemSymbolName: "1.circle", accessibilityDescription: "1")
        }
        
        setupMenus()
    }
    
    func setupMenus() {
        let menu = NSMenu()
        
        let refresh = NSMenuItem(title: "Refresh All", action: #selector(didRefresh), keyEquivalent: "r")
        menu.addItem(refresh)
        
        menu.addItem(NSMenuItem.separator())
        
        let one = NSMenuItem(title: "One", action: #selector(didTapOne) , keyEquivalent: "")
        menu.addItem(one)

        let two = NSMenuItem(title: "Two", action: #selector(didTapTwo) , keyEquivalent: "")
        menu.addItem(two)

        let three = NSMenuItem(title: "Three", action: #selector(didTapThree) , keyEquivalent: "")
        menu.addItem(three)
        
        menu.addItem(NSMenuItem.separator())
        
        let addSecurities = NSMenuItem(title: "Add Securities", action: nil, keyEquivalent: "")
        menu.addItem(addSecurities)

        menu.addItem(NSMenuItem.separator())

        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
        
        statusItem.menu = menu

    }
    
    private func changeStatusBarButton(number: Int) {
            if let button = statusItem.button {
                button.image = NSImage(systemSymbolName: "\(number).circle", accessibilityDescription: number.description)
            }
        }
    
    @objc func didRefresh() {
        
    }
    
    @objc func didTapOne() {
            changeStatusBarButton(number: 1)
        }

    @objc func didTapTwo() {
            changeStatusBarButton(number: 2)
    }

    @objc func didTapThree() {
            changeStatusBarButton(number: 3)
    }
}
