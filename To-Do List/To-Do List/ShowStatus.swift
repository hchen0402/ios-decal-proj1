//
//  ShowStatus.swift
//  To-Do List
//
//  Created by Han Chen on 11/2/15.
//  Copyright © 2015 Han Chen. All rights reserved.
//

import UIKit

class ShowStatus: UIViewController {
    
    @IBOutlet var num : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        num.text = String(numOfComplete)
    }
}
