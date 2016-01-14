//
//  WordPlotViewController.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/14.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa

class WordPlotViewController: NSViewController {

    @IBOutlet var myTextView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        NSEvent.addLocalMonitorForEventsMatchingMask(.KeyDownMask) { (aEvent) -> NSEvent! in
            self.keyDown(aEvent)
            return aEvent
        }
        self.myTextView.string = "スペースキーを押してください>"
    }
    
    override func keyDown(theEvent: NSEvent) {
       
        if (theEvent.keyCode == 49){
            //スペースキーが押された
            self.myTextView.string = ""
            let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
            
            var wordSet = Array<String>()
            
            for(var i=0 ; i < appdelegate.SetOfWordArray.count ; i++){
                if(appdelegate.SetOfWordArray[i].Enable == true){
                    wordSet += appdelegate.SetOfWordArray[i].wordSetArray
                }
            }
            
            shuffle(&wordSet)
            
            if(wordSet.count == 0){
                self.myTextView.string = "ワードセットを選択してください"
            
                return
            }
            
            for(var i = 0 ; i < 50 ; i++){
                self.myTextView.string? += wordSet[i] + "\n"
            }
            
        }
        

        
    }
    
    func shuffle<T>(inout array: [T]) {
        for var j = array.count - 1; j > 0; j-- {
            let k = Int(arc4random_uniform(UInt32(j + 1))) // 0 <= k <= j
            if k == j{
                continue
            }
            swap(&array[k], &array[j])
        }
    }
    
  
    

    
}
