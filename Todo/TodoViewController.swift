//
//  ViewController.swift
//  Todo
//
//  Created by Sebastian Buczek on 01/04/2020.
//  Copyright © 2020 Sebastian Buczek. All rights reserved.
//

import UIKit

class TodoViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demonorgon"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    //MARK - Tableview Delegate Methods

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
    }
    
    
    
    
    
    
    
}

