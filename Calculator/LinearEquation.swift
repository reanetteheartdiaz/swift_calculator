//
//  Terms.swift
//  Calculator
//
//  Created by Cebu Mobile Team on 7/23/20.
//  Copyright © 2020 Cebu Mobile Team. All rights reserved.
//

import Foundation

class LinearEquation {
    
    var terms = Items()
    var calculator = Calculator()

    func setNumbersFromOperator(_ number: Double){
        if terms.firstNumber == nil {
            terms.firstNumber = number
            print("+firstNumber: \(number)")
        }
        else if terms.secondNumber == nil && terms.readyToOperate == true {
            terms.secondNumber = number
            print("+secondNumber: \(number)")
        }
        else{
            terms.firstNumber = number
            terms.secondNumber = nil
            print("++firstNumber: \(number)")
            print("++secondNumber: nil")
        }
        saveEquation()
        
    }
    
    func setNotReadyToOperate(_ number: Double){
        if terms.firstNumber != nil, terms.secondNumber != nil {
            terms.firstNumber = number
            terms.secondNumber = nil
            terms.readyToOperate = false
        }
        saveEquation()
    }
    
    //Sets first and second number when EQUAL sign is tapped.
    func setNumbersFromEquals(_ number: Double){
        //EQUAL
        if terms.firstNumber != nil, terms.secondNumber != nil {
            terms.firstNumber = number
            print("=firstNumber: \(terms.firstNumber!)")
        }else if terms.firstNumber != nil, terms.secondNumber == nil {
            terms.secondNumber = number
            print("=secondNumber: \(number)")
        }
        saveEquation()
    }
    
    
    func setOperation(_ operation: String){
        terms.operation = operation
        terms.readyToOperate = true
        print("operation: \(operation)")
        saveEquation()
    }
    
    
    func getAnswer() -> Double?{
        let first = terms.firstNumber!
        let second = terms.secondNumber!
        switch terms.operation! {
          case "/":
              return calculator.divide(first, second)
          case "-":
              return calculator.subtract(first, second)
          case "x":
            return calculator.multiply(first, second)
          case "+":
            return calculator.add(first, second)
          default: return nil
        }
    }
    
    func resetEquation(){
        print("resetEquation")
        terms.operation = nil
        terms.firstNumber = nil
        terms.secondNumber = nil
        saveEquation()
    }
    
    func updateFirstNumber(_ number: String){
        if terms.readyToOperate == false {
            terms.firstNumber = Double(number)
        }
        saveEquation()
    }
    
    func saveEquation(){
        UserDefaults.standard.set(terms.firstNumber, forKey:"firstNumber")
        UserDefaults.standard.set(terms.secondNumber, forKey:"secondNumber")
        UserDefaults.standard.set(terms.operation, forKey:"operation")
        UserDefaults.standard.set(terms.readyToOperate, forKey:"readyToOperate")
    }
    
    func loadTerms() {
       
        if UserDefaults.standard.bool(forKey: "firstNumber") {
            terms.firstNumber = UserDefaults.standard.double(forKey: "firstNumber")
            print("1: \(UserDefaults.standard.double(forKey: "firstNumber"))")
        }
        
        if UserDefaults.standard.bool(forKey: "secondNumber") {
            terms.secondNumber = UserDefaults.standard.double(forKey: "secondNumber")
            print("2: \(UserDefaults.standard.double(forKey: "secondNumber"))")
        }

        if UserDefaults.standard.string(forKey: "operation") != nil {
            terms.operation = UserDefaults.standard.string(forKey: "operation")!
            print("op: \(UserDefaults.standard.string(forKey: "operation")!)")
        }
                
        terms.readyToOperate = UserDefaults.standard.bool(forKey:
            "readyToOperate")
                        
    }
     

}
