//
//  NewTodoListController.swift
//  Todo
//
//  Created by Robbo on 2015. 10. 7..
//  Copyright © 2015년 ieatkimchi. All rights reserved.
//

import UIKit

class NewTodoListController: UIViewController {

    @IBOutlet var listName: UITextField!
    @IBOutlet var listDescription: UITextField!
    
    var newList = TodoList?()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "newListController"

    }

    @IBAction func addNewList(sender: UIButton) {
       let newListObject = TodoList(name: listName.text!, description: listDescription.text!)
        newList = newListObject

    }
    
    override func didMoveToParentViewController(parent: UIViewController?) {
        if (!(parent?.isEqual(self.parentViewController) ?? false)) {

            
        }
    }
    
    
}

