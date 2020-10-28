//
//  Favorites.swift
//  Litinerary
//
//  Created by Sonia Di Nicoli on 28/10/2020.
//
import Foundation
import SwiftUI
class Favorites: ObservableObject {
    var id = UUID()
    // the actual resorts the user has favorited
    private var itineraries: Set<String>
        // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data

        // still here? Use an empty array
        self.itineraries = []
    }

    // returns true if our set contains this resort
    func contains(_ itinerary: Itinerary) -> Bool {
        itineraries.contains(itinerary.id)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ itinerary: Itinerary) {
        objectWillChange.send()
        itineraries.insert(itinerary.id)
        save()
    }

    // removes the resort from our set, updates all views, and saves the change
    func remove(_ itinerary: Itinerary) {
        objectWillChange.send()
        itineraries.remove(itinerary.id)
        save()
    }

    func save() {
        // write out our data
    }
}
