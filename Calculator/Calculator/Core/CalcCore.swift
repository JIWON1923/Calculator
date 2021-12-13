//
//  Calc.swift
//  Calculator
//
//  Created by Lee Ji Won on 2021/12/13.
//

import Foundation
import CalcCore 

enum Operator{
    case plus
    case minus
    case multiply
    case divide
    
    var doCalc: (Double, Double)-> Double{
        
        switch self{
        case .plus:
            return (+)
        case.minus:
            return (-)
        case.multiply:
            return (*)
        case.divide:
            return(/)
        }
        
    }
}

struct OperationNode{
    var oper: Operator
    var operand: Double
}

struct Operation{
    var base: Double
    var operationNodes: [OperationNode]
    
    func mergeOprerationNode() {
        let value = operationNodes.reduce(base, {(result: Double, element:OperationNode) in element.oper.doCalc(result, element.operand)
        })
    }
    
}

var calc = Operation(base: 3, operationNodes: [OperationNode(oper: .plus, operand: 5), OperationNode(oper: .multiply, operand: 2) ])
