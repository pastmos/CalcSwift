//
//  CalculatorBrain.swift
//  Calc
//
//  Created by Past on 27.07.17.
//  Copyright © 2017 Past. All rights reserved.
//

import Foundation

struct CalculatorBrain
{
    private var accumulator: Double?
    
    mutating func PerformOperation(_ symbol: String)
    {
        switch symbol{
        case "π":
            accumulator = Double.pi
        case "√":
            if let operend = accumulator{
            accumulator = sqrt(operend)
            }
        default:
            break
            
        }

    }
    
    
    
    mutating func SetOperand(_ operand : Double)
    {
        accumulator = operand
    }
    
    
    
    var result: Double? {
        
        get{
            return accumulator
        }
    }




}
