//
//  String+Utils.swift
//  TesteIOS
//
//  Created by Sidney Silva on 03/02/19.
//  Copyright © 2019 Sakura Soft. All rights reserved.
//

import Foundation

extension String {
    func validateRegex(pattern: String) -> Bool {
        let regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
    
    func getOnlyDigits() -> String{
        let strings = self.components(separatedBy: NSCharacterSet.decimalDigits.inverted)
        let digitOnlyString = strings.joined(separator: "")
        return digitOnlyString
    }
}

