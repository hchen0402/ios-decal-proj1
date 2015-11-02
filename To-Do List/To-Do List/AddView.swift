//
//  AddView.swift
//  To-Do List
//
//  Created by Han Chen on 10/11/15.
//  Copyright © 2015 Han Chen. All rights reserved.
//

import UIKit


protocol sendMessageDelegate {
    func sendMessage(viewCOntroller:UIViewController,text:String)
}


class AddView : UIViewController {
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet var TextField: UITextField!
    var delegate:sendMessageDelegate?
    
    override func viewDidLoad() {
        
        
    }
    @IBAction func didSendMessage(sender: AnyObject) {
        self.delegate?.sendMessage(self, text: TextField.text!)
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func didnotSendMessage(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}

