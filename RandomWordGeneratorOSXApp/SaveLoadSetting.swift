//
//  SaveLoadSetting.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/04.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa

class SaveLoadSetting: NSObject {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    func LoadDefaultSetting()
    {
        let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
        
        
        let MathWord = OneWordSetStorage()
        
        MathWord.CaptionString = "数学"
        MathWord.wordSetArray = MathematicalJpDefaultWord().ReturnWordArray()
        appdelegate.SetOfWordArray.append(MathWord)
        
        let ChemicalWord = OneWordSetStorage()
        
        ChemicalWord.CaptionString = "化学"
        ChemicalWord.wordSetArray = ChemicalJPDefaultWord().ReturnWordArray()
        appdelegate.SetOfWordArray.append(ChemicalWord)
        
        let BungakuWord = OneWordSetStorage()
        
        BungakuWord.CaptionString = "物理学"
        BungakuWord.wordSetArray = PhysicalJpDefaultWord().ReturnWordArray()
        appdelegate.SetOfWordArray.append(BungakuWord)
    }
    
    func LoadSetting()
    {
        let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
        
        appdelegate.SetOfWordArray = []
        let firsttime_ = defaults.integerForKey("FirstTime")
        if(firsttime_ == 0){
            self.LoadDefaultSetting()
        }
        
        
        let count = defaults.integerForKey("WordSetCount")
        
        for(var i=0;i < count;i++){
            
            let oneWordStorage = OneWordSetStorage()
            
            oneWordStorage.CaptionString = defaults.stringForKey("WordSetCaptionNo\(i)")!
            oneWordStorage.wordSetArray  = defaults.objectForKey("WordSetArrayNo\(i)") as! Array<String>
            
            oneWordStorage.Enable = defaults.boolForKey("WordSetEnable\(i)")
            
            appdelegate.SetOfWordArray.append(oneWordStorage)
        }
    }
    
    func SaveSetting()
    {
        let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
        
        defaults.setInteger(4, forKey:"FirstTime")
        
        defaults.setInteger(appdelegate.SetOfWordArray.count, forKey: "WordSetCount")
        
        
        for(var i=0;i < appdelegate.SetOfWordArray.count;i++){
            defaults.setObject(appdelegate.SetOfWordArray[i].CaptionString, forKey: "WordSetCaptionNo\(i)")
            defaults.setObject(appdelegate.SetOfWordArray[i].wordSetArray, forKey: "WordSetArrayNo\(i)")
            defaults.setBool(appdelegate.SetOfWordArray[i].Enable, forKey: "WordSetEnable\(i)")
        }
    }

}
