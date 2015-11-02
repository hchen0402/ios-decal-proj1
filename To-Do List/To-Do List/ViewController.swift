//
//  ViewController.swift
//  To-Do List
//
//  Created by Han Chen on 10/11/15.
//  Copyright © 2015 Han Chen. All rights reserved.
//

import UIKit

var numOfComplete = 0
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

   
    @IBOutlet weak var tableView: UITableView!

    var todoList = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : AddView = segue.destinationViewController as! AddView
        
        DestViewController.delegate = self;
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Value1, reuseIdentifier: "id")
        cell.textLabel?.text = todoList[indexPath.row]
        return cell
    }
    
   
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            todoList.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Bottom)
            numOfComplete += 1
            
        }
    }


}


extension ViewController:sendMessageDelegate {
    
    
    func sendMessage(viewCOntroller: UIViewController, text: String) {
        todoList.append(text)
        tableView.reloadData()
    }
    
    
}

