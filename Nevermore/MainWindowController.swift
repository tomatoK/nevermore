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
    
    @IBAction func clickButton(_ sender: Any) {
        
        print("点击了按钮")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

    }
    
    
}
