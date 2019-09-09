//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tipBrain = TipBrain()

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPcButton: UIButton!
    @IBOutlet weak var tenPcButton: UIButton!
    @IBOutlet weak var twentyPcButton: UIButton!
    @IBOutlet weak var splitNumber: UILabel!
    
    var splitNumberPeople = 0.0
    var moneyAmount = 0
    var tipAmount = "0%"
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        tipAmount = sender.titleLabel!.text ?? "0%"
        
        billTextField.endEditing(true)
        
        zeroPcButton.isSelected = false
        tenPcButton.isSelected = false
        twentyPcButton.isSelected = false
        sender.isSelected = true
        
        
    }


    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberPeople = sender.value
        
        splitNumber.text = (String(format: "%.0f", sender.value))
        
        
    }


    @IBAction func calculatePressed(_ sender: Any) {
        
        let moneyAmount = Double(billTextField.text ?? "0")
        
        
        tipBrain.getValues(peopleToSplit: splitNumberPeople, money: moneyAmount ?? 0.0, porcentageTip: tipAmount)

        
        self.performSegue(withIdentifier: "goToResults", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalText = tipBrain.getTotalPP()
            destinationVC.labelText = tipBrain.getSettingsLabel()
        }
    }
    
}

