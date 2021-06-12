//
//  Items.swift
//  Calculator
//
//  Created by Cebu Mobile Team on 7/23/20.
//  Copyright © 2020 Cebu Mobile Team. All rights reserved.
//

import Foundation
import os.log

class Items {
    
    
    var firstNumber: Double?
    var operation: String?
    var secondNumber: Double?
    var readyToOperate = false
    
//    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
//    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("items")
//
//    init?(firstNumber: Double?, operation: String?, secondNumber: Double?, readyToOperate: Bool){
//        self.firstNumber = firstNumber
//        self.operation = operation
//        self.secondNumber = secondNumber
//        self.readyToOperate = readyToOperate
//    }
    
//    struct PropertyKey {
//        static let firstNumber = "firstNumber"
//        static let operation = "operation"
//        static let secondNumber = "secondNumber"
//        static let readyToOperate = "readyToOperate"
//    }
//
//    func encode(with aCoder: NSCoder) {
//        aCoder.encode(firstNumber, forKey: PropertyKey.firstNumber)
//        aCoder.encode(operation, forKey: PropertyKey.operation)
//        aCoder.encode(secondNumber, forKey: PropertyKey.secondNumber)
//        aCoder.encode(readyToOperate, forKey: PropertyKey.readyToOperate)
//    }
//
//    required convenience init?(coder aDecoder: NSCoder) {
//
//        let firstNumber = aDecoder.decodeDouble(forKey: PropertyKey.firstNumber)
//        let secondNumber = aDecoder.decodeDouble(forKey: PropertyKey.secondNumber)
//        let operation = aDecoder.decodeObject(forKey: PropertyKey.operation) as? String
//        let readyToOperate = aDecoder.decodeBool(forKey: PropertyKey.readyToOperate)
//
//        self.init(firstNumber: firstNumber, operation: operation!, secondNumber: secondNumber, readyToOperate: readyToOperate)
//
//    }
}
