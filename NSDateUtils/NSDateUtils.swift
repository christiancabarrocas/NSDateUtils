//
//  NSDateUtils.swift
//  NSDateUtils
//
//  Created by Christian Cabarrocas on 31/1/15.
//  Copyright (c) 2015 ccs. All rights reserved.
//

import Foundation

public extension NSDate {
    
    //Static conversions
    func oneHour() -> Double {
        return 3600
    }
    
    func oneDay() -> Double {
        return 3600*24
    }
    
    func addOneHour() -> NSDate {
        return self.dateByAddingTimeInterval(oneHour())
    }
    
    func substractOneHour() -> NSDate {
        return self.dateByAddingTimeInterval(-oneHour())
    }
    
    func addOneDay() -> NSDate {
        return self.dateByAddingTimeInterval(oneDay())
    }
    
    func substractOneDay() -> NSDate {
        return self.dateByAddingTimeInterval(-oneDay())
    }

    //Variable conversions
    func addHours(hoursToAdd:Double) -> NSDate {
        return self.dateByAddingTimeInterval(hoursToAdd * oneHour())
    }
    
    func removeHours(hoursToRemove:Double) -> NSDate {
        return self.dateByAddingTimeInterval(-hoursToRemove * oneHour())
    }
    
    func addDays(daysToAdd:Double) -> NSDate {
        return self.dateByAddingTimeInterval(daysToAdd * oneDay())
    }
    
    func removeDays(daysToRemove:Double) -> NSDate {
        return self.dateByAddingTimeInterval(-daysToRemove * oneDay())
    }
}