//
//  CalculatorResultViewController.swift
//  jinsil
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CalculatorResultViewController: UIViewController {

    @IBOutlet var nameText: UILabel!
    @IBOutlet var genderText: UILabel!
    @IBOutlet var resultText: UILabel!
    @IBOutlet var differenceText: UILabel!
    
    var textname : String!
    var textgender:String!
    var textresult:String!
    var textdifference:String!
    var textdi:Int!
    var textdi2:Int!

    
    override func viewDidLoad() {
        
        nameText.text = textname
        genderText.text = textgender
        resultText.text = textresult
        
        if textgender=="여자"
        {
           textdi2 = 2300-textdi
            if textdi2>0
            {
            textdifference=String(textdi2)
            differenceText.text = textdifference+"kcal 만큼 적습니다."
            }
            else
            {
                textdifference=String(textdi2)
                differenceText.text = textdifference+"kcal 만큼 많습니다."
            }
        }
        else if textgender=="남자"
        {
           textdi2 = 2500-textdi
            if textdi2>0
            {
            textdifference=String(textdi2)
            differenceText.text = textdifference+"kcal 만큼 적습니다."
            }
            else
            {
                textdifference=String(textdi2)
                differenceText.text = textdifference+"kcal 만큼 많습니다."
            }
        }
        
        
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
