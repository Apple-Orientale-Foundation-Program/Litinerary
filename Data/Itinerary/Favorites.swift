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
    private let saveKey = "Favorites"

    init() {

        self.itineraries = []
    }

    func contains(_ itinerary: Itinerary) -> Bool {
        itineraries.contains(itinerary.id)
    }

    func add(_ itinerary: Itinerary) {
        objectWillChange.send()
        itineraries.insert(itinerary.id)
        save()
    }

    func remove(_ itinerary: Itinerary) {
        objectWillChange.send()
        itineraries.remove(itinerary.id)
        save()
    }

    func save() {
    }
}

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
