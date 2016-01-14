//
//  WordPlotViewController.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/14.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa

import StoreKit

class WordPlotViewController: NSViewController, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    
    ///////////////////////////////////////////////////////////////
    //以下、課金処理用
    let defaults = NSUserDefaults.standardUserDefaults()
    
    var product_id: NSString? = "biz.nanosoftware.IdeaSeedGeneratorOver100";
    //以上、課金処理に必要
    //////////////////////////////////////////////////////////////
    
    //////////////////////////////////////////////////////////////
    //以下、課金処理に必要な関数
    func buyProduct(product: SKProduct){
        print("Sending the Payment Request to Apple");
        let payment = SKPayment()
        SKPaymentQueue.defaultQueue().addPayment(payment);
        
    }
    
    func productsRequest (request: SKProductsRequest, didReceiveResponse response: SKProductsResponse) {
        
        let count : Int = response.products!.count
        if (count>0) {
            //let validProducts = response.products
            let validProduct: SKProduct = response.products![0]
            if (validProduct.productIdentifier == self.product_id) {
                print(validProduct.localizedTitle)
                print(validProduct.localizedDescription)
                print(validProduct.price)
                buyProduct(validProduct);
            } else {
                print(validProduct.productIdentifier)
            }
        } else {
            print("nothing")
        }
    }
    
    
    internal func PayForProExecute() {
        if (SKPaymentQueue.canMakePayments())
        {
            //let productID: Set<String> = [self.product_id as! String]
            let productID:NSSet = NSSet(object: self.product_id!);
            let productsRequest:SKProductsRequest = SKProductsRequest(productIdentifiers: productID as! Set<String>);
            //var productsRequest:SKProductsRequest = SKProductsRequest(productIdentifiers: productID);
            productsRequest.delegate = self;
            productsRequest.start();
            print("Purchasing product");
        }else{
            print("Cannot purchase product");
        }
        
    }
    

    
    func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        print("Received Payment Transaction Response from Apple");
        
        for transaction:AnyObject in transactions {
            if let trans:SKPaymentTransaction = transaction as? SKPaymentTransaction{
                switch trans.transactionState {
                case SKPaymentTransactionStatePurchased:
                    print("Product Purchased");
                    let myPopup: NSAlert = NSAlert()
                    myPopup.messageText = "ありがとうございます！！"
                    myPopup.informativeText = "Pro版を購入頂きありがとうございます!!"
                    myPopup.alertStyle = NSAlertStyle.InformationalAlertStyle
                    let textField = NSTextField(frame: NSRect(x:0,y: 0,width:  200,height:  24))
                    
                    myPopup.accessoryView = textField
                    myPopup.addButtonWithTitle("OK")
                    //myPopup.addButtonWithTitle("Cancel")
                    let res = myPopup.runModal()
                    if res == NSAlertFirstButtonReturn {
                        print((myPopup.accessoryView as! NSTextField).stringValue)
                        print("FirstButton")
                    
                    }
            

                    SKPaymentQueue.defaultQueue().finishTransaction(transaction as! SKPaymentTransaction)
                    defaults.setBool(true , forKey: "purchased")
                    
                    defaults.setBool(true, forKey: "ProIsPurchased")
                    break;
                case SKPaymentTransactionStateFailed:
                    print("Purchased Failed");
                    SKPaymentQueue.defaultQueue().finishTransaction(transaction as! SKPaymentTransaction)
                    break;
                    
                    
                    
                case SKPaymentTransactionStateRestored:
                    print("Already Purchased");
                    SKPaymentQueue.defaultQueue().restoreCompletedTransactions()
                    
                    let myPopup: NSAlert = NSAlert()
                    myPopup.messageText = "確認"
                    myPopup.informativeText = "既に購入されています"
                    myPopup.alertStyle = NSAlertStyle.InformationalAlertStyle
                    let textField = NSTextField(frame: NSRect(x:0,y: 0,width:  200,height:  24))
                    
                    myPopup.accessoryView = textField
                    myPopup.addButtonWithTitle("OK")
                    //myPopup.addButtonWithTitle("Cancel")
                    let res = myPopup.runModal()
                    if res == NSAlertFirstButtonReturn {
                        print("FirstButton")
                        
                    }
                    defaults.setBool(true, forKey: "ProIsPurchased")
                    
                    
                default:
                    break;
                }
            }
        }
    }
    
    
    func request(request: SKRequest!) {
        print("Error Fetching product information");
    }
    
    func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload]) {
        
    }
    //
    ////////////

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
    
    var EnableOver100Generation = false
    
    override func keyDown(theEvent: NSEvent) {
       
        if (theEvent.keyCode == 49){
            //スペースキーが押された
            ////////////////////////////////////////////////////
            //以下、課金してない場合はワードの生成回数を百回に制限
            let GenerateCount = defaults.integerForKey("CurrentGenerateCount")
            self.EnableOver100Generation = defaults.boolForKey("ProIsPurchased")
            if(GenerateCount > 100 && self.EnableOver100Generation == false&&false){
                self.EnableOver100Generation = false
                //課金されているか確認、課金されていなかった場合はリターンする
                
                let myPopup: NSAlert = NSAlert()
                myPopup.messageText = "確認"
                myPopup.informativeText = "100回以上ワードを生成するには購入が必要です"
                myPopup.alertStyle = NSAlertStyle.InformationalAlertStyle
            
                
            
                myPopup.addButtonWithTitle("OK")
                myPopup.addButtonWithTitle("Cancel")
                let res = myPopup.runModal()
                if res == NSAlertFirstButtonReturn {
                    print("FirstButton")
                    self.PayForProExecute()
                    
                }


                
                return
            }
            defaults.setInteger(GenerateCount + 1, forKey: "CurrentGenerateCount")
            
            
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
