//
//  ViewController.swift
//  Calc
//
//  Created by Past on 21.07.17.
//  Copyright © 2017 Past. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!

    var userIsInTheMiddleOfTypyng = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTypyng {
            let textCurrentlyOnDisplay = display!.text!
            display!.text  = textCurrentlyOnDisplay + digit
        }else {
            display!.text  = digit
            userIsInTheMiddleOfTypyng = true
        }
        
        
    }

    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTypyng = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol{
            case "π":
                display!.text = "3.14"
                
            default:
                break
                
            }

    }
    }
    
   
        
        
        
}
