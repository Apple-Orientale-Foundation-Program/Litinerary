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
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View{
    
    @State var data = [
        
        List(id: 0, image:"toledo", title : "Itinerario Toledo", details: "Questo itinerario parla di blah blah blah blah blah",expand: false),
        List(id: 1, image:"piazzadante", title: "Napoli Geniale", details: "Questo itinerario parla di blah blaah", expand: false),
        List(id:2, image: "posillipo", title: "Posillipo Itinerario", details:"Itinerario", expand: false),
        List(id:3, image: "posillipo", title: "Posillipo Itinerario", details:"Itinerario", expand: false)
    ]
    
    var body: some View{
        NavigationView{
            
            VStack{
                
                ScrollView(.vertical, showsIndicators: false) {
                    Spacer(minLength: 15.0)
                    VStack(spacing:15){
                        
                        
                        ForEach(self.data){i in
                            NavigationLink(destination: ItinerarySummary()) {
                                
                                VStack {
                                    ZStack {
                                        Image(i.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxWidth: .infinity, minHeight: 100)
                                            .cornerRadius(50)
                                            .padding(.horizontal)
                                        
                                        HStack(alignment: .bottom, spacing: 10.0) {
                                            
                                            Image(systemName: "figure.walk")
                                                .foregroundColor(.black)
                                                Text("5 km")
                                                    .foregroundColor(.black)
                                                    
                                            Image(systemName: "timer")
                                                .foregroundColor(.black)
                                                Text("90'")
                                                    .foregroundColor(.black)
                                                    
                                                    
                                               
                                        }
                                        .padding([.top, .leading], 160.0)
                                    }
                                    Text("Placeholder")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.center)
                                    
                                    
                                    
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                }
            }
            .navigationTitle("Itinerari")
            
            .navigationBarItems(trailing: NavigationLink(
                destination: SegnalibriView()) {
                Image(systemName: "bookmark.fill")
            })
            
            
            
            
        }
        
        
        
        
        
    }
    
    //Sample per i dati homeview
    struct List: Identifiable{
        var id: Int
        var image: String
        var title: String
        var details: String
        var expand: Bool
    }
}
