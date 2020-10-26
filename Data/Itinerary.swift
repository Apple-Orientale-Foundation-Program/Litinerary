//
//  Itinerary.swift
//  Litinerary
//
//  Created by Sonia Di Nicoli on 26/10/2020.
//

import Foundation

struct Itinerary: Identifiable {
    var id = UUID()
    
    var itineraryName: String
    var itinerarySummary: String
    var itineraryLength: String
    var itineraryDuration: String = ""

    
}
