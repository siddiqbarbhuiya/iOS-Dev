//
//  Activity.swift
//  HealthStatsApp
//
//  Created by Siddiq Barbhuiya on 12/08/22.
//

import Foundation

struct Activity: Identifiable {
    var id: String
    var name: String
    var image: String
    
    
    static func allActivities() -> [Activity] {
        return[
            Activity(id: "activeEnergyBurned", name: "Active burned Calories", image: "⚡️"),
            Activity(id: "appleExerciseTime", name: "Exercise Time", image: "🏋🏻‍♀️"),
            Activity(id: "appleStandTime", name: "Stand Time", image: "🧍🏻"),
            Activity(id: "distanceWalkingRunning", name: "Distance Walking/Runninh", image: "⛹🏻‍♂️"),
            Activity(id: "stepCount", name: "Step Count", image: "👣")
        ]
    }
}
