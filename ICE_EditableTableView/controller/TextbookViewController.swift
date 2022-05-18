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
    
    
    // MARK: Add 'add book' button
    @IBAction func addBook(_ sender: UIButton) {
//        let lastRow = tableView.numberOfRows(inSection: 0)
//        let indexPath = IndexPath(row: lastRow, section: 0)
//
//        tableView.insertRows(at: [indexPath], with: .automatic)
//
        let newBook = bookStore.createBook()
        
        if let index = bookStore.allBooks.firstIndex(of: newBook) {
            let indexPath = IndexPath(row: index, section: 0)
            
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBAction func toggleEditMode(_ sender: UIButton) {
        // If you are currently in editing mode...
        if isEditing {
            // CHange the text of button to inform user of state
//            sender.setTitle("Edit Book", for: .normal)
            
            // Turn off editing mode
            setEditing(false, animated: true)
            
        } else {
            // Change text of button to inform user of state
//            sender.setTitle("Done", for: .normal)
            
            // Enter editing mode
            setEditing(true, animated: true)
        }
    }
    
    
    // Giving the VC access to the store
    var bookStore: BookStore!
    
    // The method to produce the number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookStore.allBooks.count
    }
            
    // method to produce the cell for the table
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookTableCell", for: indexPath)
        
        // get the data out of the 'bookStore' array using indexPath.row as the index
        let book = bookStore.allBooks[indexPath.row]
        
        // and copy that info into the cell
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.genre
        
        
        
        return cell
    }
    

    
    
    
}
