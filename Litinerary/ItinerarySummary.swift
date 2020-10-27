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
                Rectangle() //placeholder for map
                    .cornerRadius(30)
                    .scaledToFit()
                    .frame(minHeight: 100)
                    
                
                Text(itinerary.itinerarySummary)
                    .font(.body) //also placeholder for real summary
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding()
                    
                
                //placeholder for image
                
                NavigationLink(destination: MapView()) {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 50, height:50)
                        
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
                }, trailing: NavigationLink(
                    destination: Link(itinerary.wikiLink, destination: itinerary.wikiLink),
                                label: {
                                    Image("Wiki")
                                          .resizable()
                                          .scaledToFit()
                                          .frame(height: 30)
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
