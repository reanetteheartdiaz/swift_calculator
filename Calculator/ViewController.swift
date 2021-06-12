//
//  ViewController.swift
//  Calculator
//
//  Created by Cebu Mobile Team on 7/16/20.
//  Copyright © 2020 Cebu Mobile Team. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {

    var linearEquation = LinearEquation()
    var precedingOutput = String()
    var pointTapped = false
    //let defaults = UserDefaults.standard
    
    // Parts of the calculator
    @IBOutlet weak var calcuScreen: UILabel!    //Calculator screen
    var lastOperatorSign = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        linearEquation.loadTerms()
        loadCalcuItems()

    }
    
    
    //ACTIONS

    // When number button is tapped.
    @IBAction func touchNumButton(_ sender: UIButton) {
        calcuScreen.text = appendInput(sender.currentTitle!)
        UserDefaults.standard.set(calcuScreen.text, forKey: "calcuScreenText")
        linearEquation.setOperation(lastOperatorSign)
    }
    
    //When operator button is tapped.
    @IBAction func touchOperator(_ sender: UIButton) {
        lastOperatorSign = sender.currentTitle!
        UserDefaults.standard.set(lastOperatorSign, forKey: "lastOperatorSign")
        linearEquation.setNumbersFromOperator(Double(calcuScreen.text!)!)
        showAnswer()
        linearEquation.setNotReadyToOperate(Double(calcuScreen.text!)!)
        precedingOutput = ""
        pointTapped = false
    }
    
    
    @IBAction func touchEqualButton(_ sender: UIButton) {
        linearEquation.setNumbersFromEquals(Double(calcuScreen.text!)!)
        linearEquation.setOperation(lastOperatorSign)
        showAnswer()
        precedingOutput = ""
        pointTapped = false
    }
    

    //When AC button is tapped.
    @IBAction func touchClearAll(_ sender: UIButton) {
        print("*touchClearAll")
        
        calcuScreen.text = "0"
        UserDefaults.standard.set(calcuScreen.text, forKey: "calcuScreenText")
        linearEquation.resetEquation()
        precedingOutput = ""
        pointTapped = false
        
    }
    

    @IBAction func touchPointButton(_ sender: UIButton) {
        print("*touchPointButton")
        //calculator.resetsWithEquals()
        if pointTapped == false{
            calcuScreen.text = appendInput(sender.currentTitle!)
            UserDefaults.standard.set(calcuScreen.text!, forKey: "calcuScreenText")
            pointTapped = true
        }
    }
    
    @IBAction func touchPercentageButton(_ sender: UIButton) {
        calcuScreen.text = String(Double(calcuScreen.text!)! * 0.01)
        UserDefaults.standard.set(calcuScreen.text!, forKey: "calcuScreenText")
        //calculator.updateFirstNumber(calcuScreen.text!)
        linearEquation.updateFirstNumber(calcuScreen.text!)
    }
    
    @IBAction func touchPosNegButton(_ sender: UIButton) {
        let negateNumber = -(Double(calcuScreen.text!)!)
        calcuScreen.text = sanitizeOutput(String(negateNumber))
        UserDefaults.standard.set(calcuScreen.text!, forKey: "calcuScreenText")
        //calculator.updateFirstNumber(calcuScreen.text!)
        linearEquation.updateFirstNumber(calcuScreen.text!)
    }
    
    //OTHER METHODS
    func appendInput(_ number: String) -> String{
        if precedingOutput.count < 8 {
            if precedingOutput == "0" && number != "."{
                precedingOutput = ""
            }else if precedingOutput == "" && number == "."{
                precedingOutput = "0"
            }
            precedingOutput = precedingOutput + number
        }
        
        //defaults.set(precedingOutput, forKey: "precedingOutput")
        return precedingOutput

    }
    
    func sanitizeOutput(_ number: String) -> String{
        print("convertCalcuNumber")
        let doubleNumber =  Double(number)!
        
        if doubleNumber.rounded(.up) == doubleNumber.rounded(.down){
            return String(Int(doubleNumber))
        }else{
            return String(doubleNumber)
        }
        
    }
 
    func showAnswer(){
        if linearEquation.terms.secondNumber != nil {
            calcuScreen.text = sanitizeOutput(String(linearEquation.getAnswer()!))
            UserDefaults.standard.set(calcuScreen.text!, forKey: "calcuScreenText")
        }
    }
    
    func loadCalcuItems(){
        if UserDefaults.standard.string(forKey: "calcuScreenText") != nil {
            calcuScreen.text = UserDefaults.standard.string(forKey: "calcuScreenText")!
        }else{
            calcuScreen.text = "0"
        }
        
        if UserDefaults.standard.string(forKey: "lastOperatorSign") != nil {
            lastOperatorSign = UserDefaults.standard.string(forKey: "lastOperatorSign")!
        }
    }
}

