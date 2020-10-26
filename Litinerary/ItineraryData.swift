//
//  ItineraryData.swift
//  Litinerary
//
//  Created by Smart Cookies on 26/10/2020.
//

import Foundation

class ItineraryData: ObservableObject {
    
    
    @Published var listOfItineraries: [ItineraryStruct]
    
    init(listOfItineraries: [ItineraryStruct]) {
        self.listOfItineraries = listOfItineraries
    }
    
    let itinerariesToUse = ItineraryData(
        listOfItineraries: [
            ItineraryStruct(nameItinerary: "L'Amica Geniale", itineraryDescription: "blablablablabla"),
            ItineraryStruct(firstName: "Marcella", lastName: "Trentino", photoName: "photo2", team: "blu"),
            ItineraryStruct(firstName: "Adalgisa", lastName: "Colombo", photoName: "photo3", team: "rosso")
        ])
            
