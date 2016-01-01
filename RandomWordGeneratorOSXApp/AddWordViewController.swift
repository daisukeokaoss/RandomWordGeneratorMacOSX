//
//  AddWordViewController.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/02.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa



class AddWordViewController: NSViewController {

    @IBAction func AddWordClick(sender: NSButton) {
        sender.title = "キャンセル"
        func dialogOKCancel(question: String, text: String) -> Bool {
            let myPopup: NSAlert = NSAlert()
            myPopup.messageText = question
            myPopup.informativeText = text
            myPopup.alertStyle = NSAlertStyle.WarningAlertStyle

            myPopup.accessoryView = NSTextField(frame: NSRect(x:0,y: 0,width:  200,height:  24))
            myPopup.addButtonWithTitle("OK")
            myPopup.addButtonWithTitle("Cancel")
            let res = myPopup.runModal()
            if res == NSAlertFirstButtonReturn {
                return true
            }
            return false
        }
        
        let answer = dialogOKCancel("Ok?", text: "Choose your answer.")
        //Debug.WriteLine(name);
    }
}
