//
//  action_module.swift
//  firstApp
//
//  Created by Emmanuel Justin Atienza on 1/5/24.
//

import Foundation

class FunctionCalls {
    
    // sample trigger function
    func printHelloWorld() {
        print("Hello World")
    }
    
    // function with specific return type and operation
    func addition(num1: Int, num2: Int) -> Int {
        let result: Int = num1 + num2
        return result
    }
    
    
    func incrementSample(value: Int) -> Int {
        let result = value + 1
        return result
    }
}
