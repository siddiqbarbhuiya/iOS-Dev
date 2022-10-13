//
//  HealthStat.swift
//  HealthStatsApp
//
//  Created by Siddiq Barbhuiya on 12/08/22.
//

import Foundation
import HealthKit

struct HealthStat: Identifiable {
    let id = UUID()
    let stat: HKQuantity?
    let date: Date
}
