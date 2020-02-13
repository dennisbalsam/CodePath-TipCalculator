//
//  TipCalc.swift
//  TipCalculator
//
//  Created by user162323 on 2/12/20.
//  Copyright © 2020 Dennis Krupitsky. All rights reserved.
//

import Foundation

class TipCalculator {
    //variables
    var billBeforeTip: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    
    //declaration
    init(billBeforeTip: Double, tipPercentage:Double) {
        self.billBeforeTip = billBeforeTip
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip() {
        tipAmount = billBeforeTip * tipPercentage
        totalAmount = tipAmount + billBeforeTip
    }
    
}
