//
//  funcExtension.swift
//  calculator
//
//  Created by Boris Bogorad on 8/3/20.
//  Copyright © 2020 Boris Bogorad. All rights reserved.
//

extension ViewController {
    
    
    func clear() {
        resultScreen.text = "0"
        mathSignPressed = false
        mathSign = 0
        value.first = 0
        value.second = 0
    }
    
    func mathSignSwitcher() {
       mathSignPressed = mathSignPressed ? false : true
    }
    
    func getValue() -> Int {
        let value = resultScreen.text ?? "0"
        return Int(value) ?? 0
    }
    
    func getMathSign(tag: Int) -> (){
        mathSign = tag
    }
    
    func mathSignButtonPressedWith(tag: Int) {
        getMathSign(tag: tag)
        mathSignSwitcher()
    }
    
    func negativeValueSwitcher() {
        let resultScreenText = resultScreen.text ?? "0"
        let firstSymbol = resultScreen.text?.prefix(1) ?? ""
        let negativeSymbolSet = firstSymbol == negativeSymbol
        
        guard resultScreen.text != "0" else { return }
        
        resultScreen.text = negativeSymbolSet ?
            String(resultScreenText.dropFirst()) :
            negativeSymbol + resultScreenText
    }
    
    func setDigit(as: Int) {
        
    }
    
    func getResultInt() -> String {
        var result = 0
        
        switch mathSign {
        case 10: result = value.first / value.second
        case 11: result = value.first * value.second
        case 12: result = value.first - value.second
        case 13: result = value.first + value.second
        default: break
        }
        return String(result)
    }
}
