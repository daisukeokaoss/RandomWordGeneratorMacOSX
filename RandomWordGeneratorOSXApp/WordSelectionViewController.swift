//
//  WordSelectionViewController.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/03.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa

class WordSelectionViewController: NSViewController,NSTableViewDataSource,NSTableViewDelegate {

    @IBOutlet weak var myWordSetScrollView: NSScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    
        
        
        
        
        
        
       
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        
    }
    
    override func viewDidDisappear() {
        super.viewDidDisappear()
        
        let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
        
        appdelegate.setting.SaveSetting()
        
    }
    
    //@IBOutlet weak var myWordCollectionTableView: NSTableView!
    func numberOfRowsInTableView(aTableView: NSTableView) -> Int
    {
        let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
        
        return appdelegate.SetOfWordArray.count
    }
    

    
    
    @IBOutlet weak var MyTableView: NSScrollView!
    
   /* func tableView(tableView: NSTableView!, objectValueForTableColumn tableColumn: NSTableColumn!, row: Int) -> AnyObject!
    {
        //        var string:String = "row " + String(row) + ", Col" + String(tableColumn.identifier)
        //        return string
        
        return "ああああああ";
    }*/
    
   /* func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        //if(tableColumn?.identifier == "EnableDisableCheckCol"){
            
            //var cellView = tableView.makeViewWithIdentifier("EnableDisableCheck", owner: MyTableView) as! NSButtonCell
            
            var cellView = tableView.makeViewWithIdentifier("EnableDisableCheck", owner: self) as! NSTableCellView
            
            
            cellView.textField?.stringValue = "おおおおおおおおおおおお"
            return cellView
        /*}else if(tableColumn?.identifier == "WordSetCaptionCol"){
            var cellView = tableView.makeViewWithIdentifier("WordSetCaption", owner: self) as! NSTableCellView
            cellView.textField?.stringValue = "iiiiiii"
            return cellView
        }
        return nil*/
    }*/
    
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        if tableColumn!.identifier == "colCheckbox" {
            
            let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
            
            
            
            //var cellView = tableView.makeViewWithIdentifier(tableColumn!.identifier, owner: self) as! NSButton;
            let cellView: NSTableCellView = tableView.makeViewWithIdentifier(tableColumn!.identifier, owner: self) as! NSTableCellView;
            let btn = cellView.subviews[0] as! NSButton;
            btn.tag = row;
            if(appdelegate.SetOfWordArray[row].Enable == true){
                btn.state = NSOnState
            }else{
                btn.state = NSOffState
            }
            
            return cellView;
            
        }else if tableColumn!.identifier == "CaptionOfWordSet" {
            let appdelegate:AppDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
            
            var cellView = tableView.makeViewWithIdentifier(tableColumn!.identifier, owner: self) as! NSTableCellView;
            cellView.textField?.stringValue = appdelegate.SetOfWordArray[row].CaptionString
            return cellView;
            
        }
        return nil
    }
    
    func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {

        
   
        
        //tableView.
        return "bbbbb"
    }
    

    


    
}
