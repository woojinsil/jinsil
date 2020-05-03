//
//  ResultViewController.swift
//  jinsil
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var nametext: UILabel!
    @IBOutlet var result: UILabel!
    @IBOutlet var resultment: UILabel!
    @IBOutlet var agetext: UILabel!
    @IBOutlet var gendertext: UILabel!
    
    var Result : String!
    var textname : String!
    var textage : String!
    var textgender:String!
    var resultone : Double!
    var ResultMent :String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nametext.text = textname
        result.text = Result
        agetext.text = textage
        gendertext.text = textgender
        
        if resultone<18.5
        {
            resultment.text="저체중"
        }
        else if resultone>18.5 && resultone<23
        {
            resultment.text="정상"
        }
        else if resultone>23 && resultone<25
        {
            resultment.text="과체중"
        }
        else if resultone>25 && resultone<30
        {
            resultment.text="고도비만"
        }
        else if resultone>35
        {
            resultment.text="초고도비만"
        }

        
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
