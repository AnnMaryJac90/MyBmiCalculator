//
//  ResultViewController.swift
//  MyBmiCalculator
//
//  Created by Anil Thomas on 11/17/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    

    var bmiCalculatorObj = BmiCalculator()
    
    var bmi : String?
    var advice : String?
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBAction func recalculatePressed(_ sender: Any) {
       
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
      //  var bmiDataStorageObj : BmiDataStorage?
        //print("value in resultVC is \(bmiDataStorageObj.bmiValue)")
        
    
        resultLabel.text = bmi
       // resultLabel.text = bmi.advice
        adviceLabel.text = advice

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
