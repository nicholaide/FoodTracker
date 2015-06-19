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
        
        
        //nil means we are using the existing tableview
        self.searchController = UISearchController(searchResultsController: nil)
        
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        
        //do not "up" into the nav bar; tableview stays as is
        self.searchController.hidesNavigationBarDuringPresentation = false
        
        
        //setup search bar programmatically
         //need to update height, but need to include all the dimensions
        self.searchController.searchBar.frame = CGRectMake(self.searchController.searchBar.frame.origin.x, self.searchController.searchBar.frame.origin.y, self.searchController.searchBar.frame.size.width, 44.0)
        
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchBar.delegate = self
        
        //ensure that searchresultscontroller is presented in the current controller
        self.definesPresentationContext = true
        
        
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

