//
//  AppDelegate.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/02.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    
    var SetOfWordArray = Array<OneWordSetStorage>()
    
    var setting = SaveLoadSetting()



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        setting.LoadSetting()
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    



}

