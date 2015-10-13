//
//  TodoListTableViewController.swift
//  Todo
//
//  Created by Robbo on 2015. 10. 7..
//  Copyright © 2015년 ieatkimchi. All rights reserved.
//

import UIKit

class TodoListTableViewController: UITableViewController {

//    var todoLists = [["name":"I am a new List Title", "List":"Do stuff..."], ["name":"I am aantoher List Title", "List":"eat cheese"]]

    var todoLists = [TodoList]()
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension

    }


    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoLists.count
        
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = indexPath.row
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TodoList", forIndexPath: indexPath)
        
        let todoList = todoLists[indexPath.row]
        
        cell.textLabel?.text = todoList.name
        cell.detailTextLabel?.text = todoList.description
        
        return cell
        
    }
    
    @IBAction func unwindForSegue(segue: UIStoryboardSegue) {
 
        if(segue.sourceViewController .isKindOfClass(NewTodoListController)) {
            
            let newListView: NewTodoListController = segue.sourceViewController as! NewTodoListController
            
            let newListToAdd = newListView.newList
            
            todoLists.append(newListToAdd!)
//            print(todoLists)
            self.tableView.reloadData()

        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "seeList" {
            
        let destVC = segue.destinationViewController as!ListViewTableViewController
            
//            todoLists[selectedIndex].lists.append("Joel likes Dave.....amrite?")
            
            destVC.listToView = todoLists[selectedIndex]

        }
    }



}