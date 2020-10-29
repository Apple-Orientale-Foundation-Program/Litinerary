//
//  ItinerarySummary.swift
//  Litinerary
//
//  Created by Smart Cookies on 23/10/2020.
//

import SwiftUI
import MapKit

struct ItinerarySummary: View {
    @EnvironmentObject var favorites: Favorites
    @EnvironmentObject var litineraryList: ItineraryList
    @State var itinerary: Itinerary
    
    var body: some View {
       
        VStack {
            mapView(itinerario: self.itinerary.itinerario)
                .frame(height: 300)
                .cornerRadius(35)
                .padding(.horizontal)
            ScrollView {
                Text(itinerary.itinerarySummary)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .font(Font.custom("Raleway", size: 18))
            }
            
            NavigationLink(destination: ModalView ()) {
                VStack {
                    Image("InizioItinerarioGrigio")
                        .resizable()
                        .scaledToFit()
                        .frame(height:80)
                    Text("Inizia")
                        .fontWeight(.medium)
                        .font(Font.custom("Raleway", size: 20))
                        .foregroundColor(Color("darkGray"))
                    
                }
                
            }
            .navigationTitle(itinerary.itineraryName)
          .navigationBarItems(trailing:Button(favorites.contains(itinerary) ? "Remove From Favorites" : "Add To Favorites") {
               if self.favorites.contains(self.itinerary) {
                 self.favorites.remove(self.itinerary)
             } else {
                self.favorites.add(self.itinerary)
              }
          }
           .padding()
                    )}
        
   }
    
    }

struct ItinerarySummary_Previews: PreviewProvider {
    static var previews: some View {
        
        ItinerarySummary(itinerary: litineraryData.listOfItineraries[0])
           .environmentObject(litineraryData)
    }
}
