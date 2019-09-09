//
//  TipBrain.swift
//  Tipsy
//
//  Created by Matias Martinelli on 20/06/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct TipBrain {
    
    var tipValues: TIP?
    var tipPorcentage: String?
        
    mutating func getValues(peopleToSplit: Double, money: Double, porcentageTip: String){
        
        if porcentageTip == "0%" {
            tipPorcentage = porcentageTip
            tipValues = TIP(splitNumberPeople: peopleToSplit, moneyAmount: money, tipAmount: 0.0)
        } else if porcentageTip == "10%"{
            tipPorcentage = porcentageTip
            tipValues = TIP(splitNumberPeople: peopleToSplit, moneyAmount: money, tipAmount: 0.1)
        } else {
            tipPorcentage = porcentageTip
            tipValues = TIP(splitNumberPeople: peopleToSplit, moneyAmount: money, tipAmount: 0.2)
        }
    }
    
    func getTotalPP() -> String{
        let money = tipValues?.moneyAmount ?? 0.0
        let tip = tipValues?.tipAmount ?? 0.0
        let people = tipValues?.splitNumberPeople ?? 0.0

        
        let totalFinal = money * ( 1 + tip) / people
        
        let totalFinalCon2Decimales = (String(format: "%.2f", totalFinal))
        
        return totalFinalCon2Decimales
    }
    
    func getSettingsLabel() -> String {
        let tip = tipPorcentage ?? "0%"
        let people = (String(format: "%.0f", tipValues?.splitNumberPeople ?? 0.0))
        
        let label = "Split between \(people) people, with \(tip) tip"
        
        return label
    }
    
}


