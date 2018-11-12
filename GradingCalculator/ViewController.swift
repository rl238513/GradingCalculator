//
//  ViewController.swift
//  GradingCalculator
//
//  Created by EDUARDO MENDOZA on 11/2/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var letterGrade: UILabel!
    @IBOutlet weak var numberGrade: UILabel!
    @IBOutlet weak var currentGrade: UITextField!
    @IBOutlet weak var desiredGrade: UITextField!
    @IBOutlet weak var examWeight: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func button(_ sender: Any) {
        
         if let startingGrade = Double(currentGrade.text!), let endGrade = Double(desiredGrade.text!), let endGrade = Double(examWeight){
        var grade = (100 * endGrade - (100 - finalExamWeight) * startingGrade) / finalExamWeight
         } else {
            let alert = UIAlertController(title: "empty textfield", message: "good job dumb dumb want some gum gum", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }






}
}
