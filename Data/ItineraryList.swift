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
      Itinerary(itineraryName: "L'Amica Geniale", itinerarySummary: "b", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "posillipo"),
      Itinerary(itineraryName: "Andreuccio da Perugia", itinerarySummary: "Questo itinerario ripercorre le avventure di Andreuccio da Perugia, protagonista della V novella della II giornata del Decameron, che Boccaccio ambienta nella Napoli Angioina, città che conosceva bene per averci vissuto da giovane per un lungo periodo.I luoghi attraversati dal protagonista, il Mercato, la chiesa maggiore, la Rua Catalana, i vicoli oscuri e maleodoranti, sono luoghi reali della Napoli trecentesca, di cui ancora oggi è possibile trovare delle tracce.", itineraryLength: "3,2 km", itineraryDuration: "1,5 h", image: "andreuccio"),
      Itinerary(itineraryName: "ancora uno", itinerarySummary: "nooooooooooooo", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "toledo")
    ])
