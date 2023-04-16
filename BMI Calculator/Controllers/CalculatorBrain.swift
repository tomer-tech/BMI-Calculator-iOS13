//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ankhe Tomer on 4/15/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    func getBMIValue() ->String{
        let bmiTruncate = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTruncate
    }
    func getAdvice() -> String{
        let advice = bmi?.advice ?? "Not sure yet"
        return advice
        
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight / pow(height,2)
        if bmiValue <= 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more!!!", color:UIColor.blue)
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "good to go!!!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "stahp!!!", color: UIColor.red)
        }
        
    }
}
 
