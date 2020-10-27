//
//  ItineraryLocations.swift
//  Litinerary
//
//  Created by Smart Cookies on 26/10/2020.
//

import Foundation

class ItineraryList: Identifiable, ObservableObject {
    @Published var listOfItineraries: [Itinerary]
    init(listOfItineraries: [Itinerary])
    {
       self.listOfItineraries = listOfItineraries
    }
    
    func itineraryIndex(itinerary: Itinerary) -> Int {listOfItineraries.firstIndex{currentItinerary in currentItinerary.id == itinerary.id}!
}
}

let litineraryData = ItineraryList(
    listOfItineraries: [
      Itinerary(itineraryName: "L'Amica Geniale", itinerarySummary: "blablablablablabla", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "posillipo"),
      Itinerary(itineraryName: "un altro", itinerarySummary: "ciaooooooooooo", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "piazzadante"),
      Itinerary(itineraryName: "ancora uno", itinerarySummary: "nooooooooooooo", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "toledo")
    ])
