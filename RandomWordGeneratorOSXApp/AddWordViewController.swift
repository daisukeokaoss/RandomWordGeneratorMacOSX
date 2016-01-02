//
//  AddWordViewController.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/02.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa



class AddWordViewController: NSViewController {
   


    @IBOutlet var myStatusTextField: StatusTextField!

    @IBAction func AddWordClick(sender: NSButton) {
        sender.title = "キャンセル"
        func dialogOKCancel(question: String, text: String) -> String {
            let myPopup: NSAlert = NSAlert()
            myPopup.messageText = question
            myPopup.informativeText = text
            myPopup.alertStyle = NSAlertStyle.WarningAlertStyle
            let textField = NSTextField(frame: NSRect(x:0,y: 0,width:  200,height:  24))

            myPopup.accessoryView = textField
            myPopup.addButtonWithTitle("OK")
            myPopup.addButtonWithTitle("Cancel")
            let res = myPopup.runModal()
            if res == NSAlertFirstButtonReturn {
                print((myPopup.accessoryView as! NSTextField).stringValue)
                print("FirstButton")
                return (myPopup.accessoryView as! NSTextField).stringValue
            }else if res == NSAlertSecondButtonReturn{
                print("SecondButton")
                return ""
            }
            return ""
        }
        
        let answer = dialogOKCancel("Ok?", text: "単語を入力してください")
        
        if(answer == ""){
            print("canceled")
            return
        }
        
        //以下、ワード収集

        self.myStatusTextField.string = answer
        
        
        //Debug.WriteLine(name);
    }
}
