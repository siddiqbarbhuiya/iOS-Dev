//
//  Date+Extension.swift
//  HealthStatsApp
//
//  Created by Siddiq Barbhuiya on 12/08/22.
//

import Foundation
extension Date {
    static func firstDayOfWeek() ->  Date {
        return Calendar(identifier: .iso8601).date(from: Calendar(identifier: .iso8601).dateComponents([.yearForWeekOfYear, .weekOfYear], from: Date())) ?? Date()
    }
}
