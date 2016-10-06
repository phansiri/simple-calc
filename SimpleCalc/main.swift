//
//  main.swift
//  SimpleCalc
//
//  Created by Litthideth Phansiri on 10/6/16.
//  Copyright © 2016 Lit Phansiri. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns")

var container = [String]()
var firstNum = readLine(strippingNewline: true)!
var secondNum:String?
var thirdNum:String?

func calculate(container:Array<String>) -> String {
    let result:String = "Result: "
    let valueOne = Int32(container[0])!
    let valueTwo = Int32(container[2])!
    
    if container.contains("+") {
        return result + "\(valueOne + valueTwo)"
    } else if container.contains("-") {
        return result + "\(valueOne - valueTwo)"
    } else if container.contains("*") {
        return result + "\(valueOne * valueTwo)"
    } else if container.contains("/") {
        return result + "\(Double(valueOne) / Double(valueTwo))"
    } else if container.contains("%") {
        return result + "\(valueOne % valueTwo)"
    }
    return "did not work"
}

let splitInputs = firstNum.characters.split(separator: " ")

var temp = splitInputs.map(String.init)
if temp.count > 1 { // more values than 1
} else {
    container.append(temp[0])
    for i in 1...2 {
        var tempNum = readLine(strippingNewline: true)!
        container.append(tempNum)
    }
}
print(calculate(container: container))


