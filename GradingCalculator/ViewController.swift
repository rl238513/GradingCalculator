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

    func gradePercentage(pPercentage: Double, percent: Double) -> Double{
        var sum = 0.0
        sum = percent * pPercentage
        return sum
    }
    
    @IBAction func doesTheMath(_ sender: Any) {
        personalPercentage.resignFirstResponder()
    }
    gradePercentage(pPercentage: Double(personalPercentage.text!), percent: 0.01)

}

