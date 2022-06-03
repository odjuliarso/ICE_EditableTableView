//
//  DetailView.swift
//  ICE_EditableTableView
//
//  Created by Student Account on 6/2/22.
//

import Foundation
import UIKit
class MyDetailView: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var detailLabel: UITextField!

    @IBOutlet weak var priceLabel: UITextField!
    
    var book: Book!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        titleLabel.text = book.title
        detailLabel.text = book.genre // note the need to convert this to a string
        priceLabel.text = "$\(book.price)"
    }
    
}
