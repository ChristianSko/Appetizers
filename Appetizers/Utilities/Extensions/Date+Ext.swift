//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 5/2/21.
//

import Foundation


extension Date {
    
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
        
        return Date()
    }
    
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
        return Date()
    }
}
