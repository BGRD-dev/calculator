//
//  ViewController.swift
//  calculator
//
//  Created by Boris Bogorad on 7/26/20.
//  Copyright © 2020 Boris Bogorad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultScreen: UILabel!
    
    
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var changeValueButton: UIButton!
    @IBOutlet var procentsButton: UIButton!
    
    @IBOutlet var nineButton: UIButton!
    @IBOutlet var timesButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var sumButton: UIButton!
    @IBOutlet var dotButton: UIButton!
    
    @IBOutlet var digit1: UIButton!
    @IBOutlet var digit2: UIButton!
    @IBOutlet var digit3: UIButton!
    @IBOutlet var digit4: UIButton!
    @IBOutlet var digit5: UIButton!
    @IBOutlet var digit6: UIButton!
    @IBOutlet var digit7: UIButton!
    @IBOutlet var digit8: UIButton!
    @IBOutlet var digit9: UIButton!
    @IBOutlet var digitZero: UIButton!
    
    
    
    var mathSignPressed = false
    var mathSign = 0
    var value = (first: 0, second: 0)
//    var result = 0
    
    let negativeSymbol = "-"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultScreen.text = "0"
    }
    
    
    override func viewWillLayoutSubviews() {
        clearButton.layer.cornerRadius = clearButton.frame.height / 2
        changeValueButton.layer.cornerRadius = changeValueButton.frame.height / 2
        procentsButton.layer.cornerRadius = procentsButton.frame.height / 2
        
        nineButton.layer.cornerRadius = nineButton.frame.height / 2
        timesButton.layer.cornerRadius = timesButton.frame.height / 2
        minusButton.layer.cornerRadius = minusButton.frame.height / 2
        plusButton.layer.cornerRadius = plusButton.frame.height / 2
        sumButton.layer.cornerRadius = sumButton.frame.height / 2
        dotButton.layer.cornerRadius = dotButton.frame.height / 2
        
        digit1.layer.cornerRadius = digit1.frame.height / 2
        digit2.layer.cornerRadius = digit2.frame.height / 2
        digit3.layer.cornerRadius = digit3.frame.height / 2
        digit4.layer.cornerRadius = digit4.frame.height / 2
        digit5.layer.cornerRadius = digit5.frame.height / 2
        digit6.layer.cornerRadius = digit6.frame.height / 2
        digit7.layer.cornerRadius = digit7.frame.height / 2
        digit8.layer.cornerRadius = digit8.frame.height / 2
        digit9.layer.cornerRadius = digit9.frame.height / 2
        digitZero.layer.cornerRadius = digitZero.frame.height / 2
    }

    @IBAction func clearAllValues(_ sender: UIButton) {
        clear()
    }
    
    
    @IBAction func mathSignButton(_ sender: UIButton) {
        value.first = getValue()
        mathSignButtonPressedWith(tag: sender.tag)
    }
    
    
    @IBAction func negativeValue(_ sender: UIButton) {
        negativeValueSwitcher()
    }
    
    @IBAction func digits(_ sender: UIButton) {
        if resultScreen.text == "0" && mathSignPressed == false{
            resultScreen.text = String(sender.tag)
        }else if resultScreen.text != "0" && mathSignPressed == false{
            resultScreen.text = resultScreen.text! + String(sender.tag)
        }else if mathSignPressed == true {
            resultScreen.text = String(sender.tag)
            mathSignPressed = false
        }
    }
    
    
    @IBAction func result(_ sender: UIButton) {
        value.second = getValue()
        resultScreen.text = getResultInt()
//        mathSignPressed = true
        
    }

}
