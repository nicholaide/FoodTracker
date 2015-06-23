//
//  DetailViewController.swift
//  FoodTracker
//
//  Created by Nicholai de Guzman on 6/19/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var usdaItem : AnyObject?
    
    @IBOutlet weak var textView: UITextView!
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "usdaItemDidComplete:", name: kUSDAItemCompleted, object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if usdaItem != nil {
            textView.attributedText = createAttributedString(usdaItem!)
        }
        
        else {
            println(usdaItem)
            println("usdaItem is nil in DetailViewController")
        }

        
    }
    
    func usdaItemDidComplete(notification: NSNotification) {
        println("usdaItemDidComplete in DetailViewController")
        usdaItem = notification.object as? USDAItem
        
        if self.isViewLoaded() && self.view.window != nil {
            textView.attributedText = createAttributedString(usdaItem as! USDAItem)
            
        }
    }
    
    
    //because NSNotificationCenter isn't managed by ARC (Automatic Reference Counting).
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //displaying item in textView
    func createAttributedString (usdaItem: AnyObject) -> NSAttributedString {
        var itemAttributedString = NSMutableAttributedString()
        var centeredParagraphStyle = NSMutableParagraphStyle()
        centeredParagraphStyle.alignment = NSTextAlignment.Center
        centeredParagraphStyle.lineSpacing = 10.0
        var titleAttributesDictionary = [
            NSForegroundColorAttributeName : UIColor.blackColor(),
            NSFontAttributeName : UIFont.boldSystemFontOfSize(22.0),
            NSParagraphStyleAttributeName : centeredParagraphStyle]
        let titleString = NSAttributedString(string: "\(usdaItem.name)\n", attributes: titleAttributesDictionary)
        itemAttributedString.appendAttributedString(titleString)
        return itemAttributedString
    }
    
    
    @IBAction func eatitBarButtonPressed(sender: UIBarButtonItem) {
    }


}
