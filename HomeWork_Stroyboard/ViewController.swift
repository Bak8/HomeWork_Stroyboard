//
//  ViewController.swift
//  HomeWork_Stroyboard
//
//  Created by Atai Begaliev on 15/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextFieldNumber: UITextField!
    
    @IBOutlet weak var TextFieldDegree: UITextField!
    
    @IBOutlet weak var Result: UILabel!
    
    
   
    var number = ""
    var degree = ""
    
    
    
    
    @IBAction func buton(_ sender: Any) {
        number = TextFieldNumber.text!
        degree = TextFieldDegree.text!
        
        if let numberInt = Int(TextFieldNumber.text!){
            number = "\(numberInt)"
            if let degreeInt = Int(TextFieldDegree.text!){
                degree = "\(degreeInt)"
            
                func calculation() {
                var calcResult = 1
                for i in 1...degreeInt {
                    calcResult *= numberInt
                }
                Result.text = ("\(calcResult)")
                }
                
                calculation()
                
            }else{
                Result.text=("Введите число в поле степень")
            }
        } else {
            Result.text=("Введите число в поле число")
        }
    }
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

