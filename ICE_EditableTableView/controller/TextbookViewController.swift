//
//  TextbookViewController.swift
//  ICE_EditableTableView
//
//  Created by Student Account on 5/17/22.
//

import UIKit

// This class will provide all three pieces of functionality that we need ( View controller, Data source, Event handling delegate)
class TextbookViewController: UITableViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Giving the VC access to the store
    var bookStore: BookStore!
        
    // MARK: Add 'add book' button
    @IBAction func addBook() {

        let newBook = bookStore.createBook()

        if let index = bookStore.allBooks.firstIndex(of: newBook) {
            let indexPath = IndexPath(row: index, section: 0)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }
    
    // MARK: Add 'edit book' button
    @IBAction func toggleEditMode(_ sender: UIButton) {
        // If you are currently in editing mode...
        if isEditing {
            sender.setTitle("Edit Book", for: .normal)
            setEditing(false, animated: true)
            
        } else {
            sender.setTitle("Done", for: .normal)
            setEditing(true, animated: true)
        }
    }
    
    // MARK: Add 'remove book' from the table
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if ( editingStyle == .delete ) {
            bookStore.remove(atIndex: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    // The method to produce the number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookStore.allBooks.count
    }
            
    // method to produce the cell for the table
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookTableCell", for: indexPath)
        
        // get the data out of the 'bookStore' array using indexPath.row as the index
        let book = bookStore.allBooks[indexPath.row]
        
        // copy that info into the cell
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.genre
        return cell
    }
}
