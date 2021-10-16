//
//  AppDelegate.swift
//  NBT Edit
//
//  Created by Brendan Ballon on 10/7/21.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    func openDocument(_ sender: AnyObject?) {
        NSDocumentController.shared.openDocument(sender)
        
//        let fileTypes = ["dat", "png", "jpeg"]
//        let panel = NSOpenPanel()
//        panel.canChooseFiles = true
//        panel.canChooseDirectories = false
//        panel.allowsMultipleSelection = false
//        panel.allowedFileTypes = fileTypes
//        panel.beginSheetModal(for: window) { (result) in
//            if result.rawValue == NSApplication.ModalResponse.OK.rawValue {
//                 // Do something with the result.
//                 let selectedFolder = panel.urls[0]
//                 print(selectedFolder)
//            }
//        }
    }


}

