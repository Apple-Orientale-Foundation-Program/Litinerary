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
        Itinerary(itineraryName: "L'Amica Geniale", itinerarySummary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "posillipo"),
        Itinerary(itineraryName: "Andreuccio da Perugia", itinerarySummary: "ciaooooooooooo", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "andreuccio"),
        Itinerary(itineraryName: "ancora uno", itinerarySummary: "nooooooooooooo", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "toledo")
    ])
