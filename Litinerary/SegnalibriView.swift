//
//  SegnalibriView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 23/10/2020.
//

import SwiftUI

struct SegnalibriView: View {
    @EnvironmentObject var litineraryList: ItineraryList
    
    
    var body: some View {
        NavigationView{
            Text("Inserire funzione per aggiungere a questa view gli itinerari preferiti")
                .navigationTitle("Segnalibri")
        }
    }
}

struct SegnalibriView_Previews: PreviewProvider {
    static var previews: some View {
        SegnalibriView()
            .environmentObject(litineraryData)
    }
}
