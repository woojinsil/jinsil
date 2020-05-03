//
//  CheckViewController.swift
//  jinsil
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CheckViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate{

    @IBOutlet var name: UITextField!
    @IBOutlet var age: UITextField!
    @IBOutlet var gender: UIPickerView!
    @IBOutlet var height: UITextField!
    @IBOutlet var weight: UITextField!
    
     let genderArray: Array<String> = ["여자", "남자"]

    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
      return true }
    
    
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        }
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genderArray.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return genderArray[row]
            }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier=="toResultView"{
        let destRC=segue.destination as! ResultViewController
        
        let genderselect:String!=genderArray[self.gender.selectedRow(inComponent: 0)]
        
       
        let nameText = name.text
        let ageText = age.text
        let heightText = Double(height.text!)!
        let weightText = Double(weight.text!)!
        
        destRC.textage = ageText
        destRC.textname = nameText
        destRC.textgender = genderselect
        
        var bmiresult = 0.0
        
        
        bmiresult = weightText/(heightText*heightText)
        
        destRC.Result = String(bmiresult)
        destRC.resultone=bmiresult
        
        
        
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
