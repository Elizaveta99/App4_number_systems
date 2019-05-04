//
//  ViewController.swift
//  application_4
//
//  Created by Lizaveta Rudzko on 2/13/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var systemSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var answerTextField: UILabel!
    
    var first = 0
    
    @IBAction func buttonFirstIsOn(_ sender: Any) {
        view.backgroundColor = UIColor(patternImage:UIImage(named:"4_bg1.jpg")!)
        first = 0
    }
    
    @IBAction func buttonSecondIsOn(_ sender: Any) {
        view.backgroundColor = UIColor(patternImage:UIImage(named:"4_bg2.jpg")!)
        first = 1
    }
    
    @IBAction func getAnswerTapped(_ sender: Any) {
        var answer : String
        answer = ""
        let number = numberTextField.text!
        
        if first == 0 {
            if systemSegmentedControl.selectedSegmentIndex == 0 {
                let number_numb = Int(numberTextField.text!)!
                answer = String(number_numb, radix: 2)
            }
            else
                if systemSegmentedControl.selectedSegmentIndex == 1 {
                    let number_numb = Int(numberTextField.text!)!
                    answer = String(number_numb, radix: 8)
                }
                else {
                    let number_numb = Int(numberTextField.text!)!
                   // if number_numb == Int(number, radix: 16) {
                    answer = String(number_numb, radix: 10)
                    //}
                }
        }
        else {
            if systemSegmentedControl.selectedSegmentIndex == 0 {
                if let new_number = Int(number, radix: 2) {
                    answer = String(new_number)
                }
            }
            else
                if systemSegmentedControl.selectedSegmentIndex == 1 {
                    if let new_number = Int(number, radix: 8) {
                        answer = String(new_number)
                    }
                }
                else {
                        if let new_number = Int(number, radix: 16) {
                            answer = String(new_number)
                        }
                    }
                }
        
        answerTextField.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

