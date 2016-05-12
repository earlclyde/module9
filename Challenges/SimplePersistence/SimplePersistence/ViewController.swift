//
//  ViewController.swift
//  SimplePersistence
//
//  Created by Mason Earl on 5/12/16.
//  Copyright © 2016 Earl Clyde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: check nsuserdefaults for saved text
        
        let savedText =
            NSUserDefaults.standardUserDefaults().objectForKey("savedText")
       
        //: If there is saved text, set that text to the text fields value
        
        if let text = savedText as? String {
            textField.text = text
        }
    }
        // returns and optional anyobject, use guard, if let to unwrap

    @IBAction func saveTextButtonTapped(sender: AnyObject) {
        
            // TODO: capture text from textField value
       
        let capturedText = textField.text
           
           // TODO: save text to NSUser defaults
            
            NSUserDefaults.standardUserDefaults().setObject(capturedText, forKey: "savedText")
        
        print(capturedText)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
//: UserDefaults is really quite simple, you have an object you want to save to the nsuser plist and set it there and then later when you want to access it you pull it back out. 

