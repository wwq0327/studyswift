//
//  ViewController.swift
//  LoveFinder
//
//  Created by wyatt on 14/12/4.
//  Copyright (c) 2014年 wyatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var birthday: UIDatePicker!
    
    @IBOutlet weak var height: UILabel!

    
    @IBOutlet weak var hasProperty: UISwitch!
    
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func heightChanged(sender: AnyObject) {
        
        var slider = sender as UISlider // 对传递的对象进行转型
        var i = Int(slider.value)
        slider.value = Float(i)
        height.text = "\(i)cm"
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        let genderText = gender.selectedSegmentIndex == 0 ? "男" : "女"
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let now = NSDate()
        let components = gregorian?.components(NSCalendarUnit.YearCalendarUnit, fromDate: birthday.date, toDate: now, options: NSCalendarOptions(0))
        let age = components?.year
        let hasPText = hasProperty.on ? "有房子" : "没房子"
        
        result.text = "\(name.text), \(genderText), 现年\(age!), \(hasPText)。"
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

