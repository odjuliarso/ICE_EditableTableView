//
//  TextbookViewController.swift
//  ICE_EditableTableView
//
//  Created by Student Account on 5/17/22.
//

import Foundation
import UIKit


// This class will provide all three pieces of functionality that we need ( View controller, Data source, Event handling delegate)
class TextbookViewController: UITableViewController {
    
    // Giving the VC access to the store
    var bookStore: BookStore!
    
    // The method to produce the number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookStore.allBooks.count
    }
            
    // method to produce the cell for the table
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    
    
    
}
