//
//  ViewController.swift
//  MyBmiCalculator
//
//  Created by Anil Thomas on 11/17/21.
//

import UIKit

class InputViewController: UIViewController {

    
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
   
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    var bmiCalculator = BmiCalculator()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    
    @IBAction func heightSlidder(_ sender: Any) {
        
        heightLabel.text = "\(String(format: "%.2f",heightSlider.value)) m"
    }
    
    @IBAction func weightSlidder(_ sender: Any) {
        
        weightLabel.text = "\(String(format: "%.0f", weightSlider.value)) kg"
    }
    
    
    
    @IBAction func calculatePressed(_ sender: Any) {
        print(heightSlider.value)
        
       // var bmiModelObj = BmiCalculator()
        
        bmiCalculator.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
        print("\(bmiCalculator.bmiValue) is the value after calculating and b4 calling segue")
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "goToResult"{
            print("Got in")
            var resultVC = segue.destination as! ResultViewController
            
            resultVC.bmi = bmiCalculator.getResult()
            
           // resultVC.label = 1.0
        }
    }
    

}

