//
//  ViewController.swift
//  ScoreApp
//
//  Created by wyatt on 14/12/3.
//  Copyright (c) 2014年 wyatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClicked(sender: AnyObject) {
        
        var score = scoreText.text.toInt()

        switch score! {
        case 0..<60:
            imageView.image = UIImage(named: "right1")
        case 60..<80:
            imageView.image = UIImage(named: "delete")
        case 80...100:
            imageView.image = UIImage(named: "mark")
        default:
            println("wrong score!")
            
        }
    }

}

