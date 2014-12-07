//
//  ViewController.swift
//  SwiftNote
//
//  Created by wyatt on 14/12/7.
//  Copyright (c) 2014年 wwq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var noteTextView: UITextView!
    
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didSaved(sender: AnyObject) {
        var content = noteTextView.text
        array.append(content)
    }
    
    
    @IBAction func didPrint(sender: AnyObject) {
        for content in array {
            println(content)
        }
    }

}

