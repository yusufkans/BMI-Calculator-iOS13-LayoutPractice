//
//  BmiBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Yusufkan Sürmelioğlu on 31.03.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct BmiBrain {
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.systemBlue
    }
    
    mutating func calculateBMI(_ height : Float, _ weight : Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should eat more!", color: UIColor.systemBlue)
            
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are good!", color: UIColor.systemGreen)
            
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "You should eat less!", color: UIColor.systemRed)
            
        }
    }
}
