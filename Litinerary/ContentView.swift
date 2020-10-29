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
    @ObservedObject var favorites = Favorites()
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
if self.favorites.contains(itinerary) {
                    Image(systemName: "heart.fill")
                    .accessibility(label: Text("Itinerario Preferito"))
                        .foregroundColor(.accentColor)
                }
//else {Image(systemName: "heart")
//    .accessibility(label: Text("This is a favorite resort"))
//        .foregroundColor(.accentColor)}
                        
                    }
                    .padding([.top, .leading], 170.0)
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
      .navigationTitle("Passeggiate letterarie")

      .navigationBarItems(trailing: NavigationLink(
        destination: PreferitiView())
      {
        Image("PreferitiRosso")
          .resizable()
          .scaledToFit()
            .frame(height: 30)
      })
      
    }
    .environmentObject(favorites)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().environmentObject(litineraryData)
  }
}

