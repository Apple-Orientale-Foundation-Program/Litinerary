//
//  Itinerary.swift
//  Litinerary
//
//  Created by Smart Cookies on 26/10/2020.
//

import Foundation

struct Itinerary: Identifiable {
    var id = UUID()
    
    var itineraryName: String
    var itinerarySummary: String
    var itineraryLength: String
    var itineraryDuration: String 

    
}
