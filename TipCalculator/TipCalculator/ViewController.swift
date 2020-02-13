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
    @IBOutlet weak var billAmountLabel: UITextField!
    
    //tip percentage label
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    //tip percent slider
    @IBOutlet weak var tipPercentageSlider: UISlider!
    
    //number of people slider
    @IBOutlet weak var numPeopleSlider: UISlider!
    
    //number of people label
    @IBOutlet weak var numPeopleLabel: UILabel!

    //each person label
    @IBOutlet weak var eachPersonAmount: UILabel!

    //total amount label
    @IBOutlet weak var totalAmountLabel: UILabel!

    
    
    //targets and actions
    
    //tip amount slider
    @IBAction func tipSliderValue(sender: Any) {
    
    }
    
    //num people
    @IBAction func numPeople(sender: Any) {
    
    }
    
    //amount before tip
    @IBAction func amountBeforeTip(sender:Any) {
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

}

