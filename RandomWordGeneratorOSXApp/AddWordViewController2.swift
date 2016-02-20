//
//  AddWordViewController2.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/03.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa

class AddWordViewController2: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "update:", name: "wordFetchNotification", object: nil)
    }
  
    @IBOutlet var myStatusTextView: NSTextView!
    
    var CancelFlag = true

    
    @IBAction func AddWordSet(sender: NSButton) {
        
        sender.title = "キャンセル"
        func dialogOKCancel(question: String, text: String) -> String {
            let myPopup: NSAlert = NSAlert()
            myPopup.messageText = question
            myPopup.informativeText = text
            myPopup.alertStyle = NSAlertStyle.InformationalAlertStyle
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
                sender.title = "Word追加"
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
        
        self.myStatusTextView.string = ""
        self.myStatusTextView.string?.appendContentsOf("ワード収集を始めます\n")
        
        let qualityOfServiceClass = DISPATCH_QUEUE_PRIORITY_DEFAULT
        let backgroundQueue = dispatch_get_global_queue(qualityOfServiceClass, 0)
        dispatch_async(backgroundQueue, {
            let obj = CollectSpecifiedCountWord()
            
            let wordArray = obj.CollectWord((answer), Count:1000)
            
            if(wordArray.count == 0){
                dispatch_async(dispatch_get_main_queue(), {
                    self.myStatusTextView.string?.appendContentsOf("\(wordArray)")
                    
                    print(wordArray)
                    
                    
                    
                    let myPopup: NSAlert = NSAlert()
                    myPopup.messageText = "確認"
                    myPopup.informativeText = "ワードが収集できませんでした"
                    myPopup.alertStyle = NSAlertStyle.WarningAlertStyle

                    myPopup.addButtonWithTitle("OK")
                
                    let res = myPopup.runModal()
                    if res == NSAlertFirstButtonReturn {
                    
                        print("FirstButton")
                    
                    }
                    
                    sender.stringValue = "単語を加える"
                    
                    self.CancelFlag = true
                    
                    
                })
                
            }
            
            
            dispatch_async(dispatch_get_main_queue(), {
                
                self.myStatusTextView.string?.appendContentsOf("\(wordArray)")
                
                print(wordArray)
                
                
                let myPopup: NSAlert = NSAlert()
                myPopup.messageText = "ワードライブラリに加えますか？"
                myPopup.informativeText = "確認"
                myPopup.alertStyle = NSAlertStyle.InformationalAlertStyle
                myPopup.addButtonWithTitle("OK")
                myPopup.addButtonWithTitle("Cancel")
                let res = myPopup.runModal()
                if res == NSAlertFirstButtonReturn {
                    //単語を加える
                    self.RegisterWordArray(wordArray, seedWord: answer)
                }else if res == NSAlertSecondButtonReturn{
                    
                }
            
                self.CancelFlag = true
                sender.title = "Word追加"
                
                
            })
            
            
            
            
        })
    }

    func update(notification: NSNotification?) {
        // 何かする
        print("NSNotification")
        
        if let userInfo = notification!.userInfo {
            let result = userInfo["value"] as! String
            let count = userInfo["CurrentWordCount"] as! Int
            print("受信した数値：\(result)")
            //self.StatusMonitorTextView.editable = true
            self.myStatusTextView.string?.appendContentsOf("「\(result)」の関連ワードを取得しました\n")
            self.myStatusTextView.string?.appendContentsOf(String("\(count)個のワードを取得しました\n"))
        }
    }
    
    func RegisterWordArray(wordArray:Array<String>,seedWord:String)
    {
        print("Registered")
        
        let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
        
        let addWordset = OneWordSetStorage()
        
        addWordset.CaptionString = seedWord
        addWordset.wordSetArray = wordArray
        
        appdelegate.SetOfWordArray.append(addWordset)
        
    }
}
