//
//  Operations.swift
//  Calculator
//
//  Created by Cebu Mobile Team on 7/17/20.
//  Copyright © 2020 Cebu Mobile Team. All rights reserved.
//

import Foundation
import os.log

//class OperationKeys: NSObject, NSCoding {
class OperationKeys {
    var readyToOperate = false
    var firstOperator: String?
    var secondOperator: String?
    var firstNumber: Double?
    var secondNumber: Double?

    //MARK: Properties
//    struct PropertyKey {
//        static let readyToOperate = "readyToOperate"
//        static let firstOperator = "firstOperator"
//        static let secondOperator = "secondOperator"
//        static let firstNumber = "firstNumber"
//        static let secondNumber = "secondNumber"
//    }
//
//    //MARK: Archiving Paths - creates the path to where files are saved
//    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
//    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("calculator")
//
//    //MARK: NSCoding Requirement: encode and init
//    func encode(with aCoder: NSCoder) {
//        aCoder.encode(readyToOperate, forKey: PropertyKey.readyToOperate)
//        aCoder.encode(firstOperator, forKey: PropertyKey.firstOperator)
//        aCoder.encode(secondOperator, forKey: PropertyKey.secondOperator)
//        aCoder.encode(firstNumber, forKey: PropertyKey.firstNumber)
//        aCoder.encode(secondNumber, forKey: PropertyKey.secondNumber)
//    }
//
//    required convenience init?(coder aDecoder: NSCoder) {
//
//        // The name is required. If we cannot decode a name string, the initializer should fail.
//
//        let readyToOperate = aDecoder.decodeBool(forKey: PropertyKey.readyToOperate)
//        guard let firstOperator = aDecoder.decodeObject(forKey: PropertyKey.firstOperator) as? String else {
//            os_log("Unable to decode the name for a Meal object.", log: OSLog.default, type: .debug)
//            return nil
//        }
//
//        guard let secondOperator = aDecoder.decodeObject(forKey: PropertyKey.secondOperator) as? String else {
//            os_log("Unable to decode the name for a Meal object.", log: OSLog.default, type: .debug)
//            return nil
//        }
//
//
//        let firstNumber = aDecoder.decodeDouble(forKey: PropertyKey.firstNumber)
//        let secondNumber = aDecoder.decodeDouble(forKey: PropertyKey.secondNumber)
//
//        // Must call designated initializer.
//        //self.init(name: name, photo: photo, rating: rating)
//
//    }
    
    
}
