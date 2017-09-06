//
//  MainWindowController.swift
//  Nevermore
//
//  Created by qiukai on 2017/8/26.
//  Copyright © 2017年 smartisan. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    
    @IBOutlet weak var button: NSButton!
    
    var shouldShowAlert: Bool = false
    
    var mainWindowController: MainWindowController?
    
    @IBAction func clickButton(_ sender: Any) {
        
        if shouldShowAlert {
            let alert = NSAlert()
            alert.messageText = "Alert message."
            alert.informativeText = "A more detailed description of the situation."
            alert.addButton(withTitle: "Default")
            alert.addButton(withTitle: "Alternative")
            alert.addButton(withTitle: "Other")
            alert.runModal()
            alert.beginSheetModal(for: self.window!) { (res) in
                print("========\(res)===")
            }
        } else {
            let mainWindowController = MainWindowController()
            mainWindowController.shouldShowAlert = true
            mainWindowController.mainWindowController = mainWindowController
            mainWindowController.showWindow(self)
        }
        
        print("点击了按钮")
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

    }
    
    
}
