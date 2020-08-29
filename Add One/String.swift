//
//  String.swift
//  Add One
//
//  Created by Ryan Leung on 2020-08-28.
//  Copyright © 2020 Ryan Leung. All rights reserved.
//

import Foundation

extension String {
    static func randomNumber(length: Int) -> String {
        var res = ""
        
        for _ in 0..<length {
            let digit = Int.random(in: 0...9)
            res += "\(digit)"
        }
        
        return res
    }
    
    func integer(at n: Int) -> Int {
        let index = self.index(self.startIndex, offsetBy: n)
        
        return self[index].wholeNumberValue ?? 0
    }
}
