//
//  TextbookViewController.swift
//  ICE_EditableTableView
//
//  Created by Student Account on 5/17/22.
//

import Foundation
import UIKit


// This class will provide all three pieces of functionality that we need ( View controller, Data source, Event handling delegate)
class TextbookViewController: UITableView,
                              UITableViewDataSource,
                              UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    // Giving the VC access to the store
    var bookStore : BookStore!
    
    
    
}
