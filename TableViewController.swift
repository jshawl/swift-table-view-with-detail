//
//  TableViewController.swift
//  Table View with Detail
//
//  Created by Jesse Shawl on 4/5/15.
//  Copyright (c) 2015 Jesse Shawl. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var items:[String] = ["one","two","three"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as DetailViewController
        let indexPath = tableView.indexPathForSelectedRow()?.row;
        destination.item = items[indexPath!]
    }
    
}
