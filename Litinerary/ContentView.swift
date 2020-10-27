//
//  ContentView.swift
//  Litinerary
//
//  Created by Smart Cookies on 22/10/2020.
//
//Votaci: hand.thumbsup
//Vai agli itinerari: book
//Librerie: books.vertical
//Tempo percorso: timer
//Ascolta tappa: speaker.wave.2
//Metti in pausa: pause.circle
//Segnalibro vuoto: bookmark
//Segnalibro pieno: bookmark.fill

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var itinList: ItineraryList
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
              
                    VStack {
                        ZStack {
                      Image(itinerary.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(50)
                        .padding(.horizontal)
                        .shadow(color: .accentColor, radius: 0.3, x:0.0, y:3.8)
                      HStack(alignment: .bottom, spacing: 10.0) {
                        Image(systemName: "figure.walk")
                          .foregroundColor(.white)
                        Text(itinerary.itineraryLength)
                            .bold()
                          .foregroundColor(.white)
                        Image(systemName: "timer")
                          .foregroundColor(.white)
                        Text(itinerary.itineraryDuration)
                            .bold()
                            .foregroundColor(.white)
                            
                      }
                      
                      .padding([.top, .leading], 170.0)
                      .colorInvert()
                      .shadow(color: .gray, radius: 0.1, x:0.5, y:0.5)
                        }
                        
                        Text(itinerary.itineraryName)
                            .font(Font.custom("Raleway", size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("darkGray"))
                           
                        
                    }
              
                
              }
            }
          }
        }
      }
      .navigationTitle("Itinerari")

      .navigationBarItems(trailing: NavigationLink(
        destination: SegnalibriView())
      {
        Image("PreferitiRosso")
            .resizable()
            .scaledToFit()
            .frame(height: 30)
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().environmentObject(litineraryData)
  }
}

