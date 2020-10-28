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
    var image: String
//    var route: String
//    questa variabile è il nome dell'itinerario (di ItineraryStops) che associa a ogni itinerario una serie di tappe
}
