//
//  CollectSpecifiedCountWord.swift
//  hassouseisei_Wiki
//
//  Created by 岡大輔 on 2015/12/20.
//  Copyright © 2015年 岡大輔. All rights reserved.
//

import Foundation


class CollectSpecifiedCountWord :NSObject{
    
    override init() {
        super.init()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "CancelProcess:", name: "killProcess", object: nil)
    }
    
    var StopFlag = 0
    
    func CancelProcess(notification: NSNotification?){
        self.StopFlag = 1
    }
    
    let internalRegexp: NSRegularExpression = try! NSRegularExpression( pattern: "[0-9]", options: NSRegularExpressionOptions.CaseInsensitive)
    let internalRegexp2: NSRegularExpression = try! NSRegularExpression( pattern: "Wikipedia", options: NSRegularExpressionOptions.CaseInsensitive)
    let internalRegexp3: NSRegularExpression = try! NSRegularExpression( pattern: "[０-９]", options: NSRegularExpressionOptions.CaseInsensitive)
    func CollectWord(seedString :String,Count:Int) -> Array<String>
    {
        var WordArray = Array<String>()
        
        var wordSet = Set<String>()
        
        let obj = getWordArrayFromWikipedia()
        
        WordArray = obj.getWordArrayFromStringJp(seedString)
        
        shuffle(&WordArray)
        
        var pointer:Int = 0
        
        for(var i = 0;i < WordArray.count ; i++) {
            if (self.internalRegexp.firstMatchInString ( WordArray[i], options: [], range:NSMakeRange(0, WordArray[i].characters.count) ) != nil){
                WordArray.removeAtIndex(i)
            }else if (self.internalRegexp2.firstMatchInString ( WordArray[i], options: [], range:NSMakeRange(0, WordArray[i].characters.count) ) != nil){
                WordArray.removeAtIndex(i)
            }else if (self.internalRegexp3.firstMatchInString ( WordArray[i], options: [], range:NSMakeRange(0, WordArray[i].characters.count) ) != nil){
                WordArray.removeAtIndex(i)
            }
        }
        
        wordSet =  Set(WordArray)
        
        
        
        
        while wordSet.count <= Count{
            
            if(WordArray.count == 0){
                return []
            }
            
            let PointerString = WordArray[pointer]
            pointer++
            sleep(2)
            
            if(StopFlag == 1){
                return []
            }
            
            print(PointerString+"のワードを取得します\n")
            
            //NSNotificationのインスタンスを作成。["value":100]という辞書型のデータを持たせる
            
            dispatch_async(dispatch_get_main_queue(), {
                // 処理が終わった後UIスレッドでやりたいことはここ
                //print("aaaaa")
            
            let n : NSNotification = NSNotification(name: "wordFetchNotification", object: self, userInfo: ["value": PointerString,"CurrentWordCount":wordSet.count])
            //通知を送る
            NSNotificationCenter.defaultCenter().postNotification(n)
                
            })
            

            
            WordArray += obj.getWordArrayFromStringJp(PointerString)
            
            for(var i = 0;i < WordArray.count ; i++) {
                if (self.internalRegexp.firstMatchInString ( WordArray[i], options: [], range:NSMakeRange(0, WordArray[i].characters.count) ) != nil){
                    WordArray.removeAtIndex(i)
                }else if (self.internalRegexp2.firstMatchInString ( WordArray[i], options: [], range:NSMakeRange(0, WordArray[i].characters.count) ) != nil){
                    WordArray.removeAtIndex(i)
                }else if (self.internalRegexp3.firstMatchInString ( WordArray[i], options: [], range:NSMakeRange(0, WordArray[i].characters.count) ) != nil){
                    WordArray.removeAtIndex(i)
                }
            }
            
            WordArray.append(seedString)
            
            wordSet = Set(WordArray)
        }
        
        
        return Array(wordSet)
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
