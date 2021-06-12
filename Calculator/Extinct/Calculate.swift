//
//  Calculate.swift
//  Calculator
//
//  Created by Cebu Mobile Team on 7/16/20.
//  Copyright © 2020 Cebu Mobile Team. All rights reserved.
//

import Foundation
import os.log

class Calculatorxx{

    var operation = OperationKeys()
    var screenOutput = String()
    var oldScreenOutput = String()
    //var updateCalcuScreen = false
    var pointTapped = false
    
//    func appendNumbers(_ calcuNumber: String) -> String{
//        //print("AppendNumber")
//       // print("-oldNumber: \(oldScreenOutput)")
//       // print("-calcuNumber: \(calcuNumber)")
//
//        //ORIGINAL
//        if oldScreenOutput.count < 8 {
//            if oldScreenOutput == "0" && calcuNumber != "."{
//                oldScreenOutput = ""
//            }else if oldScreenOutput == "" && calcuNumber == "."{
//                oldScreenOutput = "0"
//            }
//            screenOutput = oldScreenOutput + calcuNumber
//            oldScreenOutput = screenOutput
//        }
//        //print("-screenOutput: \(screenOutput)")
//        return screenOutput
//    }
    
    
    
    func resetsWithEquals(){
        print("resetsWithEquals")
        if operation.secondOperator == "="{
            resetAllOperationKeys()
            pointTapped = false
            oldScreenOutput = ""
        }
    }
    
    //func setFirstNumber(_ calcuNumber: Int){
    func setFirstNumber(_ calcuNumber: Double){
        print("setFirstNumber")
        if operation.firstNumber == nil {
            operation.firstNumber = calcuNumber
            operation.secondNumber = nil
            //saveCalculator()
        }
    }
    
    func setFirsOperator(_ operatorSign: String){
        print("setFirsOperator")
        if operation.firstNumber != nil {
            operation.firstOperator = operatorSign
            operation.secondOperator = nil
            operation.readyToOperate = true
           // saveCalculator()
        }
    }
    
    //func setSecondNumberAndOperator(_ calcuNumber: Int, _ operatorSign: String){
    func setSecondNumberAndOperator(_ calcuNumber: Double, _ operatorSign: String){
        print("setFirstAndSecond")
        if operation.readyToOperate == true, operation.firstOperator != nil {
            operation.secondNumber = calcuNumber
            operation.secondOperator = operatorSign
            //saveCalculator()
        }
    }
    
    func resetAllOperationKeys(){
        print("resetAllOperationKeys")
        operation.readyToOperate = false
        operation.firstOperator = nil
        operation.secondOperator = nil
        operation.firstNumber = nil
        operation.secondNumber = nil
        //saveCalculator()
        
    }

    //func compute() -> Int{
    func compute() -> Double{
        print("compute")
        print("1s: \(operation.firstNumber!)")
        print("2s: \(operation.secondNumber!)")
        var answer = Double()
        switch operation.firstOperator{
            case "/":
                answer = operation.firstNumber! / operation.secondNumber!
            case "-":
                answer = operation.firstNumber! - operation.secondNumber!
            case "x":
                answer = operation.firstNumber! * operation.secondNumber!
            case "+":
                answer = operation.firstNumber! + operation.secondNumber!
            default: break
        }
            
        operation.firstNumber = answer
            
        if operation.secondOperator != "="{
            operation.firstOperator = operation.secondOperator!
            operation.secondOperator = nil
            operation.secondNumber = nil

        }
        operation.readyToOperate = false
        //updateCalcuScreen = true
        //saveCalculator()
        return answer
            
    }
    
    func convertCalcuNumber(_ calcuNumber: String) -> String{
        print("convertCalcuNumber")
        let doubleCalcuNumber =  Double(calcuNumber)!
        
        if doubleCalcuNumber.rounded(.up) == doubleCalcuNumber.rounded(.down){
            return String(Int(doubleCalcuNumber))
        }else{
            return String(doubleCalcuNumber)
        }
        
    }
    
    func updateFirstNumber(_ calcuNumber: String){
        
        if operation.readyToOperate == false {
            operation.firstNumber = Double(calcuNumber)
            //saveCalculator()
        }
        
    }
    
//    private func saveCalculator() {
//        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(operation, toFile: OperationKeys.ArchiveURL.path)
//        if isSuccessfulSave {
//            os_log("Meals successfully saved.", log: OSLog.default, type: .debug)
//        } else {
//            os_log("Failed to save meals...", log: OSLog.default, type: .error)
//        }
//    }
//
//    func loadCalculator() -> OperationKeys?  {
//        return NSKeyedUnarchiver.unarchiveObject(withFile: OperationKeys.ArchiveURL.path) as? OperationKeys
//    }
//
}
