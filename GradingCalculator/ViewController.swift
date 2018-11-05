//
//  ViewController.swift
//  GradingCalculator
//
//  Created by EDUARDO MENDOZA on 11/2/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var gradeLetter: UILabel!
    @IBOutlet weak var personalPercentage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func doesTheMath(_ sender: Any) {
        personalPercentage.resignFirstResponder()
        
        if let number1 = Double(personalPercentage.text!){
            let sum = number1 * percent
            gradeLetter.text = String(sum)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}

