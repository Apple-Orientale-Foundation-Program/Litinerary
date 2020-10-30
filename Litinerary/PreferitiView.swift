//
//  SegnalibriView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 23/10/2020.
//

import SwiftUI

struct PreferitiView: View {
    @EnvironmentObject var litineraryList: ItineraryList
    @EnvironmentObject var itinList: ItineraryList
    @ObservedObject var favorites: Favorites
    
    var body: some View {
        NavigationView{
            
            VStack{
                ScrollView(.vertical, showsIndicators: false) {
                  Spacer(minLength: 15.0)
                  VStack(spacing:15)
                  {
                    ForEach(itinList.listOfItineraries) {itinerary in
                      NavigationLink (destination: ItinerarySummary (itinerary: itinerary))
                      {
                        if self.favorites.contains(itinerary) {
VStack {
                          ZStack {
                            Image(itinerary.image)
                              .resizable()
                              .scaledToFit()
                              .frame(maxWidth: .infinity, minHeight: 100)
                              .cornerRadius(20)
                              .padding(.horizontal)
                                .shadow(color: Color.accentColor.opacity(0.3), radius: 0.3, x:0.0, y:3.8)
                            HStack(alignment: .bottom, spacing: 10.0) {
                              Image(systemName: "figure.walk")
                                .colorInvert()
                                .foregroundColor(.white)
                              Text(itinerary.itineraryLength)
                                .bold()
                                .foregroundColor(.white)
                                .colorInvert()
                              Image(systemName: "timer")
                                .foregroundColor(.white)
                                .colorInvert()
                              Text(itinerary.itineraryDuration)
                                .bold()
                                .foregroundColor(.white)
                                .colorInvert()
                            }
                            .padding([.top, .leading], 170.0)
                            .shadow(color: .gray, radius: 0.1, x:0.5, y:0.5)
                          }

                          Text(itinerary.itineraryName)
                            .font(Font.custom("Raleway", size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(.accentColor)
                        }
                      }
                        
                    }
                  }
                }
              }
        }.navigationTitle("Preferiti")
    }
}
}
//struct PreferitiView_Previews: PreviewProvider {
//    static var previews: some View {
//        PreferitiView()
//            .environmentObject(favorites)
//    }
//}
