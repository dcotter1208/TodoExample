//
//  ListViewTableViewController.swift
//  Todo
//
//  Created by Robbo on 2015. 10. 13..
//  Copyright © 2015년 ieatkimchi. All rights reserved.
//

import UIKit

class ListViewTableViewController: UITableViewController {

    var listToView = TodoList?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = listToView!.name
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension


        print(listToView!.lists.count)
        
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listToView!.lists.count
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("todo", forIndexPath: indexPath)
        
        let todoItem = listToView?.lists[indexPath.row]
        cell.textLabel?.text = todoItem
        
        return cell
        
    }


    @IBAction func unwindForListItemSegue(unwindSegue: UIStoryboardSegue) {
        if(unwindSegue.sourceViewController .isKindOfClass(NewTodoViewController)) {
            let newListView: NewTodoViewController = unwindSegue.sourceViewController as! NewTodoViewController
            let newToDoItem = newListView.toDoItem
            
            listToView!.lists.append(newToDoItem)
            self.tableView.reloadData()
        }
        
    }

}
