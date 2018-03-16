//
//  ViewController.swift
//  Todooey
//
//  Created by Sabiq Shawqy on 14/3/18.
//  Copyright © 2018 Sabiq Shawqy. All rights reserved.
//

import UIKit

class ToDoListVC: UITableViewController {

    let itemArray = ["buy fishsticks", "eat lots of ass", "become the wolf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Tableview datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK: - Tableview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        //putting in a check mark next to the cell and removing the check mark if its there
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //animated selection on the tableview - makes the cell show its selected and then disappears
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

