//
//  ItineraryLocations.swift
//  Litinerary
//
//  Created by Sonia Di Nicoli on 26/10/2020.
//

import Foundation

class ItineraryList: ObservableObject {
    
    @Published var listOfItineraries: [Itinerary]
    
    init(listOfItineraries: [Itinerary])
    {
                self.listOfItineraries = listOfItineraries
    }
 
}

let litineraryData = ItineraryList(
    listOfItineraries: [
        Itinerary(itineraryName: "L'Amica Geniale", itinerarySummary: "blablablablablabla", itineraryLength: "3,8 km", itineraryDuration: "50'")
    ])
