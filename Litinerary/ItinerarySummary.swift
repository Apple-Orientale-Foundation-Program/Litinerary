//
//  ItinerarySummary.swift
//  Litinerary
//
//  Created by Smart Cookies on 23/10/2020.
//

import SwiftUI

struct ItinerarySummary: View {
    @EnvironmentObject var litineraryList: ItineraryList
    
    @State var itinerary: Itinerary
    
    
    var body: some View {
        NavigationView{
            VStack {
                MapView()
                    .frame(height: 350)
                    .cornerRadius(50)
                    .padding(20)
                ScrollView {
                    Text(itinerary.itinerarySummary)
                        .font(.body)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding()
                }
                
                NavigationLink(destination: MapView()) {
                    VStack {
                        Image("InizioItinerarioGrigio")
                            .resizable()
                            .scaledToFit()
                            .frame(height:80)
                        Text("Inizia")
                            .fontWeight(.medium)
                        
                    }
                    
                }
                
                .navigationTitle("Itinerario")
                .navigationBarItems(leading: NavigationLink(destination: Text("ciao"),
                                                            label: {
                                                                Image("WikiRosso")
                                                                    .resizable()
                                                                    .scaledToFit()
                                                                    .frame(height: 35)
                                                            }), trailing: VStack {
                                                                NavigationLink(
                                                                    destination: SegnalibriView())
                                                                {Image(systemName: "heart")
                                                                    .resizable()
                                                                    .scaledToFit()
                                                                    .frame(height: 30)}
                                                            }
                )
                
                
            }
            
            
            
        }
    }
}

struct ItinerarySummary_Previews: PreviewProvider {
    static var previews: some View {
        
        ItinerarySummary(itinerary: litineraryData.listOfItineraries[0])
            
            .environmentObject(litineraryData)
    }
}
