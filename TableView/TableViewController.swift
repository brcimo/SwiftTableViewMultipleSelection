//
//  TableViewController.swift
//  TableView
//
//  Created by Bryan Cimo on 6/2/15.
//  Copyright (c) 2015 iHerb. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController
{
    var lastSelectedIndexPath = NSIndexPath(forRow: -1, inSection: 0)
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! UITableViewCell
        
        // Configure the cell...
        cell.textLabel!.text = "row: \(indexPath.row)"
        
        if cell.selected
        {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        if cell!.selected == true
        {
            cell!.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else
        {
            cell!.accessoryType = UITableViewCellAccessoryType.None
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 100
    }
}
