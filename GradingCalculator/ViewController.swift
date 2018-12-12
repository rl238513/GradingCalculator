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
    @IBOutlet weak var image: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        image.backgroundColor = .green
    }
    
    @IBAction func button(_ sender: Any) {
        
        currentGrade.resignFirstResponder()
        desiredGrade.resignFirstResponder()
        examWeight.resignFirstResponder()
        acolor()
        if let startingGrade = Double(currentGrade.text!), let endGrade = Double(desiredGrade.text!), let finalExamWeight = Double(examWeight.text!){
            let grade = (100 * endGrade - (100 - finalExamWeight) * startingGrade) / finalExamWeight
            numberGrade.text = String(grade)
            
            
            
        } else {
            let alert = UIAlertController(title: "empty textfield", message: "good job dumb dumb want some gum gum", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
        
        
        
    }
    func acolor(){
        if image.backgroundColor == .green{
            image.backgroundColor = .red
             self.view.backgroundColor = .blue
        }else{
            image.backgroundColor = .blue
            self.view.backgroundColor = .red
        }}
}
