//
//  CalculatorViewController.swift
//  jinsil
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate{
    
    
    @IBOutlet var name: UITextField!
    @IBOutlet var genderpicker: UIPickerView!
    @IBOutlet var breakfast: UITextField!
    @IBOutlet var lunch: UITextField!
    @IBOutlet var dinner: UITextField!
    
    let genderArray: Array<String> = ["여자", "남자"]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return genderArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return genderArray[row]
        }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
    return true }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier=="calculatorResultView"{
        let destCR=segue.destination as! CalculatorResultViewController
        
        let genderselect:String!=genderArray[self.genderpicker.selectedRow(inComponent: 0)]
               
        
        
        let nametext = name.text
        destCR.textgender = genderselect
        

        let intkcal1 = Int(breakfast.text!)!
        let intkcal2 = Int(lunch.text!)!
        let intkcal3 = Int(dinner.text!)!
        

        var totalResult = 0
        totalResult = intkcal1 + intkcal2 + intkcal3
        destCR.textresult=String(totalResult)
        destCR.textdi=totalResult
        destCR.textname = nametext
        
       
        
        
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
