//
//  main.swift
//  SimpleCalc
//
//  Created by Litthideth Phansiri on 10/6/16.
//  Copyright © 2016 Lit Phansiri. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns")

//var first = readLine(strippingNewline: true)!
//let second = readLine(strippingNewline: true)!
//var third = readLine(strippingNewline: true)!
//var result:Int32?
//
//let numFirst = Int32(first)!
//let numThird = Int32(third)!
//
//if second == "%" {
//    result = numFirst % numThird
//} else if second == "-" {
//    result = numFirst - numThird
//} else if second == "*" {
//    result = numFirst * numThird
//} else if second == "/" {
//    result = numFirst / numThird
//} else { // plus
//    result = numFirst + numThird
//}
//
//print("Result: \(first) \(second) \(third) = \(result!)")

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
//    print("inside more than 1: \(temp)")
} else {
    container.append(temp[0])
//    print("only one value...add 2 more \(container)")
    for i in 1...2 {
        var tempNum = readLine(strippingNewline: true)!
        container.append(tempNum)
//        print("\(i)th value: \(container) ")
    }
}
print(calculate(container: container))


