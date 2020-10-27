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
        NavigationView{ //just example structure for page
            VStack {
                
                MapView()
                 .frame(height: 300)
                    .cornerRadius(30)
                    .padding(10)
                    
                    
                
                Text(itinerary.itinerarySummary)
                    .font(.body) //also placeholder for real summary
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding()
                    
                
                //placeholder for image
                
                NavigationLink(destination: MapView()) {
                    VStack {
                        Image("InizioItinerarioGrigio")
                            .resizable()
                            .scaledToFit()
                            .frame(height:100)
                        
                        Text("Inizia")
                    }
                    
                }
            
                
                
                    
                    
                    
                    
                .navigationTitle("Itinerario")
                .navigationBarItems(leading: VStack {
                    NavigationLink(
                        destination: SegnalibriView())
                    {Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)}
                }, trailing: NavigationLink(destination: Text("ciao"),
                                label: {
                                    Image("WikiRosso")
                                          .resizable()
                                          .scaledToFit()
                                          .frame(height: 35)
                                })
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
