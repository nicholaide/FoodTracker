//
//  DetailViewController.swift
//  FoodTracker
//
//  Created by Nicholai de Guzman on 6/19/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var usdaItem:USDAItem?
    
    @IBOutlet weak var textView: UITextView!
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "usdaItemDidComplete:", name: kUSDAItemCompleted, object: nil)
    }
    
    func usdaItemDidComplete(notification: NSNotification) {
        println("usdaItemDidComplete in DetailViewController")
        usdaItem = notification.object as? USDAItem
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //because NSNotificationCenter isn't managed by ARC (Automatic Reference Counting).
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func eatitBarButtonPressed(sender: UIBarButtonItem) {
    }


}
