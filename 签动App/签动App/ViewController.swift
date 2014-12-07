//
//  ViewController.swift
//  签动App
//
//  Created by wyatt on 14/12/7.
//  Copyright (c) 2014年 wwq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    var nameArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func checkInClieck(sender: AnyObject) {
        var name = userName.text
        println("\(name)")
        nameArray.append(name)
    }
    
    @IBAction func reviewCliecked(sender: AnyObject) {
//        for var index=0; index < nameArray.count; index++ {
//            println("\(index) -> \(nameArray[index])")
//        }
        for name in nameArray {
            println("\(name)")
        }
    }

}

