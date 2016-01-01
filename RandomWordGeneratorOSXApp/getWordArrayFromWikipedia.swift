//
//  getWordArrayFromWikipedia.swift
//  hassouseisei_Wiki
//
//  Created by 岡大輔 on 2015/12/19.
//  Copyright © 2015年 岡大輔. All rights reserved.
//

import Foundation



class getWordArrayFromWikipedia:NSObject, NSXMLParserDelegate{
    

    
    
    var endFlag = false
    var WordArray:Array<String> = []
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        
        
        if(elementName == "pl"){
            //print(attributeDict["title"])
            
            WordArray.append(attributeDict["title"]!)
        }
    }
    
    
    func getMathWordArray()
    {
        let url = NSURL(string: "https://ja.wikipedia.org/w/api.php?format=xml&action=query&prop=links&titles=%E6%95%B0%E5%AD%A6&&pllimit=100")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: {data, response, error in
            // リソースの取得が終わると、ここに書いた処理が実行される
            
            let parser : NSXMLParser? = NSXMLParser(data: data!)
            if parser != nil {
                parser!.delegate = self
                parser!.parse()
            } else {
                // パースに失敗した時
                print("failed to parse XML")
            }
            // print(data?.base64EncodedDataWithOptions(<#T##options: NSDataBase64EncodingOptions##NSDataBase64EncodingOptions#>))
        })
        
        task.resume()
    }
    
    
    func getWordArrayFromStringJp(seedWord:String) -> Array<String>
    {
        WordArray = []
        
        let url = NSURL(string: "https://ja.wikipedia.org/w/api.php?format=xml&action=query&prop=links&titles=" + seedWord.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())! + "&&pllimit=1000")
        
       
        self.endFlag = true
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: {data, response, error in
            // リソースの取得が終わると、ここに書いた処理が実行される
            
            let parser : NSXMLParser? = NSXMLParser(data: data!)
            if parser != nil {
                parser!.delegate = self
                parser!.parse()
                
                self.endFlag = false
            } else {
                // パースに失敗した時
                print("failed to parse XML")
            }
            

            
            
            
        })
        
        task.resume()
        
        while self.endFlag == true{
            usleep(100)
        }
        

        
        return WordArray
    }
    
    func parserDidEndDocument(parser: NSXMLParser) {
        
    }
    

    
    
    
}
