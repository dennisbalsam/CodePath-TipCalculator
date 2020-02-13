//
//  ViewController.swift
//  TipCalculator
//
//  Created by user162323 on 2/12/20.
//  Copyright © 2020 Dennis Krupitsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //bill amount
    @IBOutlet weak var billAmount: UITextField!
    
    //tip percentage label
    @IBOutlet weak var tipPercentageLabel: UILabel!
    //tip percent slider
    @IBOutlet weak var tipPercentageSlider: UISlider!
    //number of people slider
    @IBOutlet weak var numPeopleSlider: UISlider!
    //numbe of people label
    @IBOutlet weak var numPeopleLabel: UILabel!
    //each person label
    @IBOutlet weak var eachPersonAmount: UILabel!
    //total amount label
    @IBOutlet weak var totalAmountLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make enter amount first responder
        billAmount.becomeFirstResponder()
        
    }
    
    //functions
    func calculateBill() {
        tipCalculator.tipPercentage = Double(floor(tipPercentageSlider.value))/100.0
        tipCalculator.billBeforeTip = (billAmount.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        updateUI()
    }
    
    func updateUI() {
        totalAmountLabel.text = String(format: "$%0.2f",tipCalculator.totalAmount)
        
        let numberOfPeople: Int = Int(numPeopleSlider.value)
        eachPersonAmount.text = String(format: "$%0.2f", tipCalculator.totalAmount/Double(numberOfPeople))    }
    
        //bring in tip calc reference
    var tipCalculator = TipCalculator(billBeforeTip: 0, tipPercentage:0.10)
    
    //targets and actions
    
    //tip amount slider
    @IBAction func tipSliderValue(sender: Any) {
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipPercentageSlider.value))
        calculateBill()
    }
    
    //num people
    @IBAction func numPeople(sender: Any) {
        numPeopleLabel.text = "People: \(Int(numPeopleSlider.value))"
        calculateBill()
    }
    
    //amount before tip
    @IBAction func amountBeforeTip(_ sender: Any) {
        calculateBill()    }
    
    
    

}

