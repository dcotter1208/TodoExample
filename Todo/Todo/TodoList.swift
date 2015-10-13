//
//  TodoList.swift
//  Todo
//
//  Created by Robbo on 2015. 10. 7..
//  Copyright © 2015년 ieatkimchi. All rights reserved.
//

import Foundation

class TodoList {
    
    var name: String = "List Name"
    var description: String = "Description"
    var lists = ["Stuff I need to do"]
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    
}