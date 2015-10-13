//
//  NewTodoViewController.swift
//  Todo
//
//  Created by Robbo on 2015. 10. 8..
//  Copyright © 2015년 ieatkimchi. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController {
    @IBOutlet weak var toDoNameInputField: UITextField!
    var toDoItem = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addToDoButton(sender: AnyObject){
        toDoItem = toDoNameInputField.text!
        
        
    }




}
