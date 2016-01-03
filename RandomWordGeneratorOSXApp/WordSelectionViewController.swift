//
//  WordSelectionViewController.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/03.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa

class WordSelectionViewController: NSViewController,NSTableViewDataSource,NSTableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
       
    }
    
    @IBOutlet weak var myWordCollectionTableView: NSTableView!
   /* func numberOfRowsInTableView(aTableView: NSTableView!) -> Int
    {
        return 20
    }*/
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return 20
    }
    @IBOutlet weak var MyTableView: NSScrollView!
    
   /* func tableView(tableView: NSTableView!, objectValueForTableColumn tableColumn: NSTableColumn!, row: Int) -> AnyObject!
    {
        //        var string:String = "row " + String(row) + ", Col" + String(tableColumn.identifier)
        //        return string
        
        return "ああああああ";
    }*/
    
    func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        return "オオおおおお"
    }
    
}
