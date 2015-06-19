//
//  ViewController.swift
//  FoodTracker
//
//  Created by Nicholai de Guzman on 6/19/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, UISearchControllerDelegate, UISearchResultsUpdating {

    @IBOutlet weak var tableView: UITableView!
    
    //can't add this via storyboard, need to be in code
    var searchController:UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Mark - UI TableView data sourceimeplementating the delegates
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    //Mark - UISearchResultsUpdatingDelegate
    func updateSearchResultsForSearchController(searchController: UISearchController) {
    
    }
    
    
    

}

