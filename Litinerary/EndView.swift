//
//  Bookmark.swift
//  Litinerary
//
//  Created by Giusi Ferrigno on 24/10/2020.
//

import SwiftUI
struct ItineraryEnd: View {
    @EnvironmentObject var litineraryList: ItineraryList
    
    @State var itinerary: Itinerary
    
    
var body: some View {
    NavigationView {
        VStack {
Text("Complimenti!")
.font(.largeTitle)
.fontWeight(.bold)
.foregroundColor(.accentColor)
.multilineTextAlignment(.center)

Spacer()
.frame(height: 50.0)

Text("Hai completato l'itinerario")
.font(.title2)
.fontWeight(.semibold)
.foregroundColor(Color("darkGray"))




Image("FineItinerario")
.resizable()
.scaledToFit()
.frame(height: 150)


    Text("Ecco alcune cose che potrebbero servirti:")
.font(.title2)
.fontWeight(.semibold)
.foregroundColor(Color("darkGray"))
.multilineTextAlignment(.center)
        .padding()


            
                Form {
                    NavigationLink(
                        destination: Text(""),
                        label: {RigaSettings(options: "bookmark", titoloRiga: "Aggiungi \(itinerary.itineraryName) ai segnalibri")
                        })
                    NavigationLink(
                        destination: Text(""),
                        label: {RigaSettings(options: "books.vertical", titoloRiga: "Vedi le librerie nei dintorni")
                        })
                    NavigationLink(
                        destination: ContentView(),
                        label: {RigaSettings(options:"book",titoloRiga:"Sfoglia gli altri itinerari")
                        
                        })
                    NavigationLink(
                        destination: Text(""),
                        label: {RigaSettings(options: "hand.thumbsup", titoloRiga: "Vota Litinerary sull'App store")
                        })
                }
            }
        }
    }


    struct RigaSettings: View {
        var options = ""
        var titoloRiga = ""
        var body: some View {
            HStack {
                Image(systemName: options)
                    .renderingMode(.original)
                    .imageScale(.large)
                Text(titoloRiga)
            }
        }
    }
}


struct ItineraryEnd_Previews: PreviewProvider {
static var previews: some View {
ItineraryEnd(itinerary: litineraryData.listOfItineraries[0])
        .environmentObject(litineraryData)
}
}


