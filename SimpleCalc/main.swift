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

let inputs = readLine(strippingNewline: true)!
let splitInputs = inputs.characters.split(separator: " ")
print(splitInputs.map(String.init))


