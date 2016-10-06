//
//  main.swift
//  SimpleCalc
//
//  Created by Litthideth Phansiri on 10/6/16.
//  Copyright © 2016 Lit Phansiri. All rights reserved.
//

import Foundation

var container = [String]()
var operations = ["+", "-", "*", "/", "%", "avg", "count", "fact"]

// does the calculations from given array and returns the result
func calculate(container:Array<String>) -> String {
    let result:String = "Result: "
    if container.contains("+") {
        return result + "\(Int(container[0])! + Int(container[2])!)"
    } else if container.contains("-") {
        return result + "\(Int(container[0])! - Int(container[2])!)"
    } else if container.contains("*") {
        return result + "\(Int(container[0])! * Int(container[2])!)"
    } else if container.contains("/") {
        return result + "\(Double(container[0])! / Double(container[2])!)"
    } else if container.contains("%") {
        return result + "\(Int(container[0])! % Int(container[2])!)"
    } else if container.contains("count") {
        var tempContainer = container
        tempContainer.removeLast()
        return "=> \(tempContainer.count)"
    } else if container.contains("avg") {
        var tempContainer = container
        tempContainer.removeLast()
        var averageCount:Int = 0
        for i in 0...tempContainer.count - 1 {
            let number = Int(tempContainer[i])!
            averageCount += number
        }
        return "=> \(Double(averageCount) / Double(tempContainer.count))"
    } else if container.contains("fact") {
        var bigNumber = Int(container[0])
        var factResult:Int = 1
        while (bigNumber! > 0) {
            factResult *= bigNumber!
            bigNumber = bigNumber! - 1
        }
        return result + "\(factResult)"
    } else {
        return "did not work...please run the program again"
    }
}

// main function that'll handle the input and translate it into an array
func main() {
    print("Enter an expression separated by returns")
    var firstNum = readLine(strippingNewline: true)!
    let splitInputs = firstNum.characters.split(separator: " ")
    var temp = splitInputs.map(String.init)
    if temp.count > 1 { // more values than 1
        container = temp
    } else {
        container.append(temp[0])
        for _ in 1...2 {
            let tempNum = readLine(strippingNewline: true)!
            container.append(tempNum)
        }
    }
    print(calculate(container: container))
}

main()


