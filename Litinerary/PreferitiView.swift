//
//  SegnalibriView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 23/10/2020.
//

import SwiftUI

struct PreferitiView: View {
    @EnvironmentObject var litineraryList: ItineraryList
    @ObservedObject var favorites = Favorites()
    
    
    var body: some View {
        NavigationView{
            Text("Inserire funzione per aggiungere a questa view gli itinerari preferiti")
                .navigationTitle("Preferiti")
        }
    }
}

struct PreferitiView_Previews: PreviewProvider {
    static var previews: some View {
        PreferitiView()
            .environmentObject(litineraryData)
    }
}
