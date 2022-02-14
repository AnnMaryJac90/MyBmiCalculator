//
//  bmiModel.swift
//  MyBmiCalculator
//
//  Created by Anil Thomas on 11/17/21.
//

import Foundation


struct BmiCalculator {
    
    var bmiValue : Float = 0.0
    var advice : String? = "Test Sucess"
    var bmiData : BmiDataStorage?
    
   mutating func calculateBmi(height : Float,weight : Float)
    {
        print("enetered calculator")
        print("Weight is \(weight) and height is \(height)")
        bmiValue = weight / pow(height, 2)
        print("got in calculateBMI with value as \(bmiValue)")
       
        if bmiValue < 18.5
        {
           bmiData = BmiDataStorage(bmiValue: bmiValue, finalAdvice: "Eat More and gain weight!!!")
        }
        else if bmiValue < 24.9
        {
            bmiData = BmiDataStorage(bmiValue: bmiValue, finalAdvice: "Fantastic!!Maintain this")
        }
        else
        {
            bmiData = BmiDataStorage(bmiValue: bmiValue, finalAdvice: "Do control your food!!!")
        }
        
        print("stored value is \(bmiData?.bmiValue)")
//        bmiDataStorageObj.bmiValue = value
//        print("In calculator value of bmiValue is: \( bmiDataStorageObj.bmiValue)")
    }
    
    
    func getResult() -> String
    {
        let bmiFinal = String(format : "%.2f", bmiValue ?? 0.0)
        print("final bmi value is \(bmiData?.bmiValue)")
        return bmiFinal
    }
}

