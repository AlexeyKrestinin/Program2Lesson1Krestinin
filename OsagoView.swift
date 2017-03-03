//
//  OsagoView.swift
//  Program2Lesson1Krestinin
//
//  Created by Алексей Крестинин on 01.03.17.
//  Copyright © 2017 Alexey Krestinin. All rights reserved.
//

import UIKit

class OsagoView: UIView {

    var calculator = Calculate(power: 0, age: 0, baseSum: 3432, cityPrecision: 2,expirience: 0)
    
    // LABELS
    @IBOutlet var agePrecisionLabel: UILabel!
    
    @IBOutlet var sumLabel: UILabel!
    
    @IBOutlet var powerPrecisionLabel: UILabel!
    
    @IBOutlet var currentAgeLabel: UILabel!
    
    @IBOutlet var currentPowerLabel: UILabel!
    
    
    //SLIDERS
    @IBOutlet var ageSlider: UISlider!
    
    @IBOutlet var powerSlider: UISlider!
    
    
    // FUNC
    
    @IBAction func expirienceChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: calculator.expirience = 2
        case 1: calculator.expirience = 4
        default:
            fatalError("что то пошло не так в func experience")
        }

    }
    
    
    @IBAction func ageSliderChange(_ sender: UISlider) {
        calculator.age = Double(ageSlider.value)
        agePrecisionLabel.text = "Коэффициент возраста:\(calculator.agePrecision())"
        currentAgeLabel.text = "\(Int(ageSlider.value))"
    }
  
    
    
    @IBAction func powerSliderChange(_ sender: UISlider) {
        calculator.power = Double(powerSlider.value)
        powerPrecisionLabel.text = "Коэффициент мощности: \(calculator.powerPrecision())"
        currentPowerLabel.text = "\(Int(powerSlider.value))"
        
     sumLabel.text = "ИТОГО: \(calculator.osagoPrice()) руб."
        
    }
  

   
}





